using JSON, CSV, DataFrames, BenchmarkTools, Distributed, FileIO, Pickle, Unmarshal
using NetPricing, JuMP, Gurobi

# Single core limitation
#ENV["JULIA_NUM_THREADS"] = "1"

# Define a struct to store the results
struct OptimizationResult
	id::AbstractString
	tvals::Vector{Float64}
	λvals::Dict
	xvals::Dict
	Amap::Dict
	Vmap::Dict
	b::Dict
	flow::Dict
	obj_value::Float64
	preprocess_time::Float64
	solve_time::Float64
	#total_flow::Dict
	finish::Bool
end


function FindMN(form_type::Type{GeneralFormulation{P,D}}, probs;
    bigM_difference=true,
    kwargs...) where {P,D}

    forms = convert.(Formulation, filter!(!isnothing, assign.(form_type, probs; bigM_difference)))
    # Big M
    Ms = [NetPricing.calculate_bigM(form, threads=nothing) for form in forms]
    Nn = max.(collect.(maximum.(Ms, dims=2))...)
    return Ms, Nn #formulate!(forms, linearization; kwargs...)
end

MN(probs; kwargs...) = FindMN(StandardFormulation, probs; kwargs...)
const cst_mn = MN


function projectionN(transformation::Dict, Nn)
    # println("projectionN")
    # N ---> N~
    # NS : vector of subvectors. The values in subvector at position i
    # are the value from N for every arc in the class [i].
    # Remember that the transformation create a partition of edges that we consider
    # equivalent. The same applies with the N values, NS is a partition of N base on the
    # the edge partition aka the transformation.
    NS = [[] for _ in 1:maximum(values(transformation))]
    for i in keys(transformation)
    	if typeof(i)!=typeof(1)
    		j = parse(Int, i)
    	else
    		j=i
    	end
        append!(
                NS[transformation[i]], Nn[j]#N[parse(Int, i)]
        )
    end
    
    # Multiple choice (min or max)
    # NT_* : vector representing the maximum value that at least one user is ready to pay
    # in the case that this user have to pass by the edge i. In this case, we borrow the true
    # N from the original problem and adapt to the transform problem.
    # Therefore, the vector could lead to suboptimal objective in the transform problem,
    # but should be valid when we return the original problem.
    # The idea is to solve the smaller problem and use the result as the new N for
    # the original problem with the hope of good time reduction and good approximation.
    
    NT_min = [value(minimum(vec)) for vec in NS]
    NT_avg = [value(mean(vec)) for vec in NS]
    NT_max = [value(maximum(vec)) for vec in NS]
    return NT_min, NT_avg, NT_max
end


function retroprojectionN(transformation::Dict, NT)
    # println("retroprojectionN")
    # N~ ---> N (or t*~ ---> N)
    # N : vector representing the maximum value that at least one user is ready to pay
    # in the case that this user have to pass by the edge i. We reuse the transformation
    # to expand the NT vector that come from the contracted space.
    Nn = zeros(length(transformation))
    for (k, v) in transformation
    	if typeof(k)!=typeof(1)
    		j = parse(Int, k)
    	else
    		j=k
    	end
        Nn[j] = NT[v]
    end
    
    return Nn
end

function projectionM(transformation::Dict, Mm)
    # println("projectionM")
    MT_min = [[] for _ in 1:length(Mm)]
	MT_avg = [[] for _ in 1:length(Mm)]
    MT_max = [[] for _ in 1:length(Mm)]
    for (i, row) in enumerate(eachrow(Mm))
        MT_min[i], MT_avg[i], MT_max[i] = projectionN(transformation, first(row))
    end
    return MT_min, MT_avg, MT_max
end

function retroprojectionM(transformation::Dict, MT)
    # println("retroprojectionM")
    Mm = [[] for _ in 1:length(MT)]
    for (i, row) in enumerate(eachrow(MT))
        Mm[i] = retroprojectionN(transformation, first(row))
    end
    return Mm
end




# Function to save results to a file
function save_result_individual(result::OptimizationResult, filename::AbstractString)
    open(filename, "w") do file
        JSON.print(file, result)
    end
end

function save_result_batch(results, filename::AbstractString)
	# results : array of OptimizationResult
	# filename : path/to/output.json
	
	# Convert the results list to a JSON string
	json_data = JSON.json(results)

	# Compress the JSON data into a bytes object
	# Save the compressed data to a file
	#open(filename, "a") do file
	#	write(file, json_data)
	#end
	
	
	# Check if the file exists
	if isfile(filename)
		# If the file exists, open it in append mode
		open(filename, "a") do file
		    # Write some data to the file
		    write(file, json_data)
		    println("EXISTING FILE")
		end
	else
		# If the file does not exist, create it and write some data to it
		open(filename, "w") do file
		    write(file, json_data)
		    println("NEW FILE")
		end
	end
end

# Import problem
function import_problem_from_file(file::AbstractString)
    # Import a problem from a file
    prob = read_problem(file)
    
	# Get the file name without the extension
	id = splitext(basename(file))[1]
	#println(id)
	return prob, id
end

function import_problem_from_str(str::AbstractString)
	prob = unmarshal(Problem, JSON.parse(str)["problem"])
	return prob
end


function solve_and_get_values(prob::Problem, id::AbstractString, time_limit::Int, Mm=nothing, Nn=nothing; option=0, rtrans=nothing, trans=nothing)
    try
		# Measure preprocessing time
		# obligatoire
		preprocess_time = @elapsed begin
			# Preprocess the problem for each commodity
			pprobs = preprocess(prob, maxpaths = 1000)
		end

		if Mm!=nothing && Nn!=nothing
			model, forms = NetPricing.cst_model(pprobs, Mm, Nn, option=option, rtrans=rtrans, trans=trans)
		else
			# Create a model
			model, forms = std_model(pprobs)
		end
		
		 # Set GurobiSolver parameters
		set_optimizer(model, Gurobi.Optimizer)
		set_optimizer_attribute(model, "OutputFlag", 0) # suppress all output from the solver
		set_optimizer_attribute(model, "TimeLimit", time_limit) # stop the process after x seconds
		
		
		# Measure solving time
		solve_time = @elapsed begin
			# Solve the model
			optimize!(model)
		end

		# Extract the result
		tvals = value.(model[:t])  # The prices t

		# Get the objective value
		obj_value = objective_value(model)

		Amap = Dict()
		Vmap = Dict()
		λvals = Dict()
		xvals = Dict()
		b = Dict()
		flow = Dict()

		for k in 1:length(forms)
			primal_repr = primal(forms[k])              # Primal representation
			dual_repr = NetPricing.dual(forms[k])       # Dual representation
			prob_k = problem(primal_repr)               # Preprocessed problem of forms[k]
			
			real_k = NetPricing.index(prob_k)
			Amap[real_k] = used_arcs(prob_k)		    		# List of edge index of the solution path
			Vmap[real_k] = used_nodes(prob_k)                   # List of vertex index of the solution path
			λvals[real_k] = value.(dual_repr.λ)                 # Dual prices λ[k] (only for dual-arc)
			xvals[real_k] = value.(primal_repr.x)               # Path vector
			b[real_k] = NetPricing.sourcesink_vector(prob_k)    # Source sink vector
			flow[real_k] = Amap[real_k][xvals[real_k] .== 1.0]  # edge flow (vector) by original index
		end
		
		finish = (solve_time <= time_limit)
		
		#println("time:\t",preprocess_time+solve_time,"\tobj:\t",obj_value)
		return OptimizationResult(id, tvals, λvals, xvals, Amap, Vmap, b, flow, obj_value, preprocess_time, solve_time, finish)

    catch
    	println("Infeasible ", id)
        return nothing
	end
end




function experience(M_original, N_original,
					transformation::Dict, 
					prob_original::Problem, prob_trans::Problem, 
					id::AbstractString, time_limit::Int, option::Int)
	
	
    result_list = []
    
    # Transform Big M, N
    trans = transformation["TA"]
    NT_min, NT_avg, NT_max = projectionN(trans, N_original) # minimal, average, maximal projection
    MT_min, MT_avg, MT_max = projectionM(trans, M_original) # minimal, average, maximal projection

	# The name of the result is :
    # id-zip/min/avg/max-option
	# option x when solving in the transformed space
    
    
    # Baseline
    # 0. BASELINE - random N in the original NPP (but keep the original M)
    # 1. RANDOM - random bound for M and N
    # 2. RETRO - Compute Big M bounds in the transformed problem 
    # 3. MIN - Use the minimal projection of the bounds given by Big M in the original problem
    # 4. AVG - Use the average projection of the bounds given by Big M in the original problem
    # 5. MAX - Use the maximal projection of the bounds given by Big M in the original problem

	# Strategies for the retrosolving
	# 1. Shortest path
		## Evaluate the original problem with the retroprojection of the optimal solution (t~*) from the transformed problem
	# 2. Lower-bound
		## Use the retroprojection of optimal solution (t~*) from the transformed problem as a lower to the variable t to solve the original problem 
	# 3. Upper-bound
		## Use the retroprojection of optimal solution (t~*) from the transformed problem as a upper to the variable t to solve the original problem 
	# 4. Comprehensive lower bound
		## Similar to 2 but the lower bound is only applied when it is lower than the corresponding element in N. Otherwise, the lower bound is the one by default
	# 5. Comprehensive upper bound
		## Similar with 3 but the upper bound is only applied when it is lower than the corresponding element in N. Otherwise, the upper bound is the one by default
	# 6. Hybrid
		## Use the optimal solution of the transformed problem to add multiple constraints in the original problem:
		## ("γ(A)' * λ~ <= γ(c) + γ(t)")
		## ("(c + t)' * x <= b' * γ^-1(λ~)")
		## ("(γ(c) + γ(t))' * x~ <= γ(b)' * λ~")
		## for all users with their projected problem feasible, otherwise use the default constraint given. Also, this only work when the γ is defined as the average projection or other linear projection.
		## In this strategy γ is the average projection.
    
    

    baseline = (option==0) 
	random = (option==1) 
	retro = (option==2)      
	retro_min = (option==3)
	retro_avg = (option==4)
	retro_max = (option==5)
	
    if baseline
    	# Use a random N to directly evaluate the original problem
    	# This is the baseline and it can be unfeasible
    	# This is the random-baseline
		try
			N_rnd = [rand() for _ in 1:size(N_original)[1]]
			N_rnd = N_rnd .* N_original
			N_rnd = [[round(Int, x) for x in subvec] for subvec in N_rnd]
			
			result_base_1 = solve_and_get_values(prob_original, id*"-bsl-1", min(30, time_limit), M_original, N_rnd, option=1);         													# Option 1 - Shortest path
			result_base_2 = solve_and_get_values(prob_original, id*"-bsl-2", time_limit, M_original, N_rnd, option=2); 													# Option 2 - Lower bound
			result_base_3 = solve_and_get_values(prob_original, id*"-bsl-3", time_limit, M_original, N_rnd, option=3); 													# Option 3 - Upper bound
			result_base_4 = solve_and_get_values(prob_original, id*"-bsl-4", time_limit, M_original, N_rnd, option=4); 													# Option 4 - Comprehensive lower bound
			result_base_5 = solve_and_get_values(prob_original, id*"-bsl-5", time_limit, M_original, N_rnd, option=5); 													# Option 5 - Comprehensive upper bound
		
			# Storing results
			push!(result_list, result_base_1)
			push!(result_list, result_base_2)
			push!(result_list, result_base_3)
			push!(result_list, result_base_4)
			push!(result_list, result_base_5)
			
		catch
			println("An error occured in random. ", id)
		end
	end
    if random
    	# Use a random M and N to project in the transformed space
    	# This is the baseline and it can be unfeasible
    	# This is the pseudo-random-baseline
    	
		try
			# Solving in transformed space
			M_rnd = [rand() for _ in 1:size(MT_max)[1]]
			M_rnd = M_rnd .* MT_max
			M_rnd = [[round(Int, x) for x in subvec] for subvec in M_rnd]
			
			N_rnd = [rand() for _ in 1:size(NT_max)[1]]
			N_rnd = N_rnd .* NT_max
			N_rnd = [[round(Int, x) for x in subvec] for subvec in N_rnd]
			
			result_trans_rnd = solve_and_get_values(prob_trans, id*"-rnd-x", time_limit, M_rnd , N_rnd, option=0);
			N_retro_rnd = retroprojectionN(trans, result_trans_rnd.tvals);
			
			result_rand_1 = solve_and_get_values(prob_original, id*"-rnd-1", min(30, time_limit), M_original, N_retro_rnd, option=1);         												# Option 1 - Shortest path
			result_rand_2 = solve_and_get_values(prob_original, id*"-rnd-2", time_limit, M_original, N_retro_rnd, option=2); 												# Option 2 - Lower bound
			result_rand_3 = solve_and_get_values(prob_original, id*"-rnd-3", time_limit, M_original, N_retro_rnd, option=3); 												# Option 3 - Upper bound
			result_rand_4 = solve_and_get_values(prob_original, id*"-rnd-4", time_limit, M_original, N_retro_rnd, option=4); 												# Option 4 - Comprehensive lower bound
			result_rand_5 = solve_and_get_values(prob_original, id*"-rnd-5", time_limit, M_original, N_retro_rnd, option=5); 												# Option 5 - Comprehensive upper bound
			result_rand_6 = solve_and_get_values(prob_original, id*"-rnd-6", time_limit, M_original, N_original, option=6, rtrans=result_trans_rnd, trans=transformation);	# Option 6 - Hybrid
		
			# Storing results
			push!(result_list, result_trans_rnd)
			push!(result_list, result_rand_1)
			push!(result_list, result_rand_2)
			push!(result_list, result_rand_3)
			push!(result_list, result_rand_4)
			push!(result_list, result_rand_5)
			push!(result_list, result_rand_6)
			
		catch
			println("An error occured in random. ", id)
		end
	end
	
    if retro
    	# Directly solve the transformed problem user problem trivial (when the source and destination are the same)
    	# This baseline can be unfeasible if the transformation make every 
    	# This is the retro-baseline
    	
    	try
			# Solving in transformed space
			result_trans = solve_and_get_values(prob_trans, id*"-zip-x", time_limit);
			N_retro = retroprojectionN(trans, result_trans.tvals);
			
			result_retro_1 = solve_and_get_values(prob_original, id*"-zip-1", min(30, time_limit), M_original, N_retro, option=1);         												# Option 1 - Shortest path
			result_retro_2 = solve_and_get_values(prob_original, id*"-zip-2", time_limit, M_original, N_retro, option=2); 												# Option 2 - Lower bound
			result_retro_3 = solve_and_get_values(prob_original, id*"-zip-3", time_limit, M_original, N_retro, option=3); 												# Option 3 - Upper bound
			result_retro_4 = solve_and_get_values(prob_original, id*"-zip-4", time_limit, M_original, N_retro, option=4); 												# Option 4 - Comprehensive lower bound
			result_retro_5 = solve_and_get_values(prob_original, id*"-zip-5", time_limit, M_original, N_retro, option=5); 												# Option 5 - Comprehensive upper bound
			result_retro_6 = solve_and_get_values(prob_original, id*"-zip-6", time_limit, M_original, N_original, option=6, rtrans=result_trans, trans=transformation);	# Option 6 - Hybrid
			
			# Storing results
			push!(result_list, result_trans)
			push!(result_list, result_retro_1)
			push!(result_list, result_retro_2)
			push!(result_list, result_retro_3)
			push!(result_list, result_retro_4)
			push!(result_list, result_retro_5)
			push!(result_list, result_retro_6)
			
    	catch
    		println("An error occured in retro.", id)
    	end
    end
    
    if retro_min
    	# Solve the transformed problem using the minimal projection of M and N
    	try
			# Solving in transformed space with custom values for M and N
			result_trans_min = solve_and_get_values(prob_trans, id*"-min-x", time_limit, MT_min, NT_min, option=0);
			N_retro_min = retroprojectionN(trans, result_trans_min.tvals);
			
			result_retro_1_min = solve_and_get_values(prob_original, id*"-min-1", min(30, time_limit), M_original, N_retro_min, option=1);         												# Option 1 - Shortest path
			result_retro_2_min = solve_and_get_values(prob_original, id*"-min-2", time_limit, M_original, N_retro_min, option=2); 												# Option 2 - Lower bound
			result_retro_3_min = solve_and_get_values(prob_original, id*"-min-3", time_limit, M_original, N_retro_min, option=3); 												# Option 3 - Upper bound
			result_retro_4_min = solve_and_get_values(prob_original, id*"-min-4", time_limit, M_original, N_retro_min, option=4); 												# Option 4 - Comprehensive lower bound
			result_retro_5_min = solve_and_get_values(prob_original, id*"-min-5", time_limit, M_original, N_retro_min, option=5); 												# Option 5 - Comprehensive upper bound
			result_retro_6_min = solve_and_get_values(prob_original, id*"-min-6", time_limit, M_original, N_original, option=6, rtrans=result_trans_min, trans=transformation);	# Option 6 - Hybrid
			
			# Storing results		
			push!(result_list, result_trans_min)
			push!(result_list, result_retro_1_min)
			push!(result_list, result_retro_2_min)
			push!(result_list, result_retro_3_min)
			push!(result_list, result_retro_4_min)
			push!(result_list, result_retro_5_min)
			push!(result_list, result_retro_6_min)
		catch
			println("An error occured in retro min.", id)
		end
    end
    
    if retro_avg
    	# Solve the transformed problem using the average projection of M and N
    	try
			# Solving in transformed space with custom values for M and N
			result_trans_avg = solve_and_get_values(prob_trans, id*"-avg-x", time_limit , MT_avg, NT_avg, option=0);
			N_retro_avg = retroprojectionN(trans, result_trans_avg.tvals);
			
			result_retro_1_avg = solve_and_get_values(prob_original, id*"-avg-1", min(30, time_limit), M_original, N_retro_avg, option=1);         												# Option 1 - Shortest path
			result_retro_2_avg = solve_and_get_values(prob_original, id*"-avg-2", time_limit, M_original, N_retro_avg, option=2); 												# Option 2 - Lower bound
			result_retro_3_avg = solve_and_get_values(prob_original, id*"-avg-3", time_limit, M_original, N_retro_avg, option=3); 												# Option 3 - Upper bound
			result_retro_4_avg = solve_and_get_values(prob_original, id*"-avg-4", time_limit, M_original, N_retro_avg, option=4); 												# Option 4 - Comprehensive lower bound
			result_retro_5_avg = solve_and_get_values(prob_original, id*"-avg-5", time_limit, M_original, N_retro_avg, option=5); 												# Option 5 - Comprehensive upper bound
			result_retro_6_avg = solve_and_get_values(prob_original, id*"-avg-6", time_limit, M_original, N_original, option=6, rtrans=result_trans_avg, trans=transformation);	# Option 6 - Hybrid
			
			# Storing result
			push!(result_list, result_trans_avg)
			push!(result_list, result_retro_1_avg)
			push!(result_list, result_retro_2_avg)
			push!(result_list, result_retro_3_avg)
			push!(result_list, result_retro_4_avg)
			push!(result_list, result_retro_5_avg)
			push!(result_list, result_retro_6_avg)
		catch
			println("An error occured in retro avg.", id)
		end
	end
	
	if retro_max
		# Solve the transformed problem using the maximal projection of M and N
		try
			# Solving in transformed space with custom values for M and N
			result_trans_max = solve_and_get_values(prob_trans, id*"-max-x", time_limit , MT_max, NT_max, option=0);
			N_retro_max = retroprojectionN(trans, result_trans_max.tvals);
			
			result_retro_1_max = solve_and_get_values(prob_original, id*"-max-1", min(30, time_limit), M_original, N_retro_max, option=1);         												# Option 1 - Shortest path
			result_retro_2_max = solve_and_get_values(prob_original, id*"-max-2", time_limit, M_original, N_retro_max, option=2); 												# Option 2 - Lower bound
			result_retro_3_max = solve_and_get_values(prob_original, id*"-max-3", time_limit, M_original, N_retro_max, option=3); 												# Option 3 - Upper bound
			result_retro_4_max = solve_and_get_values(prob_original, id*"-max-4", time_limit, M_original, N_retro_max, option=4); 												# Option 4 - Comprehensive lower bound
			result_retro_5_max = solve_and_get_values(prob_original, id*"-max-5", time_limit, M_original, N_retro_max, option=5); 												# Option 5 - Comprehensive upper bound
			result_retro_6_max = solve_and_get_values(prob_original, id*"-max-6", time_limit, M_original, N_original, option=6, rtrans=result_trans_max, trans=transformation);	# Option 6 - Hybrid

			# Storing result
			push!(result_list, result_trans_max)
			push!(result_list, result_retro_1_max)
			push!(result_list, result_retro_2_max)
			push!(result_list, result_retro_3_max)
			push!(result_list, result_retro_4_max)
			push!(result_list, result_retro_5_max)
			push!(result_list, result_retro_6_max)
		catch
			println("An error occured in retro max.", id)
		end
	end
	
	
    return result_list
end



function main(args)
    input_file = args[1]
    output_file = args[2]
    time_limit = parse(Int, args[3])
    
    
    option1 = endswith(input_file, ".json") & endswith(output_file, ".json") & (length(args)==3)
    option2 = endswith(input_file, ".pkl") & endswith(output_file, ".json") & (length(args)==3)

	if length(args)==6
		experience_option = parse(Int, args[4])
        original_file = args[5]
        transformation_file = args[6]
    	
    	# Import original problem
        prob_original, id_original = import_problem_from_file(original_file)
        pprobs_original = preprocess(prob_original, maxpaths = 1)
        
        # Find Big M, N
        M_original, N_original  = cst_mn(pprobs_original)
        
        option3 = endswith(input_file, ".json") & endswith(output_file, ".json") & endswith(original_file, ".json") & endswith(transformation_file, ".json") & (length(args)==6)
        option4 = endswith(input_file, ".pkl") & endswith(output_file, ".json") & endswith(original_file, ".json") & endswith(transformation_file, ".pkl") & (length(args)==6)
    
    else
        option3 = false
        option4 = false
	end
	
    if option1
	    # Individual solver
		# input file 		: path/to/input.json
		# output file		: path/to/output.json
		# time_limit 		: int
		
        result = solve_and_get_values(import_problem_from_file(input_file)..., time_limit)
        if result!=nothing
            save_result_individual(result, output_file)
        else
            println("An error occurred.", input_file)
        end
	    
    elseif option2
		# Batch solver and one compressed result output file
		# input file 		: path/to/input.pkl
		# output file		: path/to/output.json
		# time_limit  		: int
		
		results_array = []
	    
		# Read the compressed data from the file
		data = Pickle.load(open(input_file, "r"))
		
		# Loop over the data
		for item in data
			k, v = item
			
            result = solve_and_get_values(import_problem_from_str(JSON.json(v)), k, time_limit)
            if result!=nothing
                push!(results_array, result)
            else
				println("An error occurred.", k)
			end
		end
        
		if length(results_array)>0
    		save_result_batch(results_array, output_file)
        end

    
    elseif option3
        # Individual solver solver with multiple experience
		# input file          : path/to/input.json
		# output file         : path/to/output.json
		# experience_option	  : int
		# time_limit          : int
		# original_file       : path/to/original.json
		# transformation_file : path/to/transformation.json

        prob_trans, id = import_problem_from_file(input_file)
		# Import transformation
        transformation = JSON.parsefile(transformation_file)
        
        result = experience(M_original, N_original, transformation, prob_original, prob_trans, id, time_limit, experience_option)
        filtered_result = filter(!isequal(nothing), result)
        
        if length(filtered_result)!=0
        	save_result_batch(filtered_result, output_file)
    	else
    		println("An error occured.", id)
    	end
    
    elseif option4
    	# Batch solver solver with multiple experience
		# input file          : path/to/input.pkl
		# output file         : path/to/output.json
		# time_limit          : int
		# experience_option   : int
		# original_file       : path/to/original.json (the batch is supposed to be based on the same original problem)
		# transformation_file : path/to/transformation.pkl
		results_array = []
	    
		# Read the compressed data from the file
		data = Pickle.load(open(input_file, "r"))
		transformations= Pickle.load(open(transformation_file, "r"))
		
		# Loop over the data
		for item in data
			k, v = item
			transformation = transformations[k]
			prob_trans = import_problem_from_str(JSON.json(v))
			result = experience(M_original, N_original, transformation, prob_original, prob_trans, k, time_limit, experience_option)
			 
            if result!=nothing
                append!(results_array, filter(!isequal(nothing), result))
            else
				println("An error occurred.", k)
			end
		end
        
		if length(results_array)>0
    		save_result_batch(results_array, output_file)
        end
        		
    else
		println("An error occurred.", input_file)
	end
end



if Main == @__MODULE__
    main(ARGS)
end
# Example usage 
# $ julia script.jl '/path/to/existing_file.json' '/path/to/future_output.json'


