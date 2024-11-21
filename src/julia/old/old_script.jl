function solve_and_get_values(prob::Problem, id::AbstractString, time_limit::Int)

    # Measure preprocessing time
    # obligatoire
    preprocess_time = @elapsed begin
        # Preprocess the problem for each commodity
        pprobs = preprocess(prob, maxpaths = 1000)
    end
	
    # Create a model
    model, forms = std_model(pprobs)
    
     # Set GurobiSolver parameters
    set_optimizer(model, Gurobi.Optimizer)
    set_optimizer_attribute(model, "TimeLimit", time_limit) # stop the process after x seconds
    
    # Measure solving time
    solve_time = @elapsed begin
        # Solve the model
        optimize!(model)
    end

    # Extract the result
    tvals = value.(model[:t])  # The prices t
	#println(tvals)
    # Get the objective value
    obj_value = objective_value(model)

	flow = []
	for k in 1:length(forms)
		primal_repr = primal(forms[k])              # Primal representation
		prob_k = problem(primal_repr)               # Preprocessed problem of forms[k]
		Amap = used_arcs(prob_k)		    # List of edge index of the solution path 
		#println(Amap)
		append!(flow, Amap)
	end
	
	all_flow = vcat(flow)
	min_val = minimum(all_flow)
	max_val = maximum(all_flow)
	freq_dict = Dict(i => 0 for i in min_val:max_val)

	for val in all_flow
		freq_dict[val] += 1
	end
	finish = (solve_time <= time_limit)
	
    return OptimizationResult(id, tvals, obj_value, preprocess_time, solve_time, freq_dict, finish)
end

function main(args)

    input_file = args[1]
    output_file = args[2]
    time_limit = parse(Int, args[3])

    
    if endswith(input_file, ".json")
	    # Individual solver
		# input file : json
		# output file: json
		try
			result = solve_and_get_values(import_problem_from_file(input_file)..., time_limit)
			save_result_individual(result, output_file)
	    catch
			println("An error occurred.", input_file)
		end
	    
    elseif endswith(input_file, ".pkl") & endswith(output_file, ".json") 
		# Batch solver and one compressed result output file
		# input file : path/to/input.pkl
		# output file: path/to/output.json
		
		results_array = []
	    
		# Read the compressed data from the file
		data = Pickle.load(open(input_file, "r"))
		# Loop over the data
		for item in data
			k, v = item
			try
				result = solve_and_get_values(import_problem_from_str(JSON.json(v)), k, time_limit)
				push!(results_array, result)
			catch
				println("An error occurred.", k)
			end
		end
		
		save_result_batch(results_array, output_file)
		
	else
		println("An error occurred.", input_file)
	end
end
