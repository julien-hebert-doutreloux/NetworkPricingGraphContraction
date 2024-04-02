using JSON, BenchmarkTools, CSV, DataFrames, Distributed
using NetPricing, JuMP, Gurobi

# Single core limitation
#ENV["JULIA_NUM_THREADS"] = "1"

# Define a struct to store the results
struct OptimizationResult
    tvals::Vector{Float64}
    obj_value::Float64
    preprocess_time::Float64
    solve_time::Float64
    flow::Dict
end

# Function to save results to a file
function save_result(result::OptimizationResult, filename::AbstractString)
    open(filename, "w") do file
        JSON.print(file, result)
    end
end


function solve_and_get_values(file::AbstractString)
    # Import a problem from a file
    prob = read_problem(file)
	
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
    set_optimizer_attribute(model, "TimeLimit", 100) # stop the process after 100 second
    
    # Measure solving time
    solve_time = @elapsed begin
        # Solve the model
        optimize!(model)
    end

    # Extract the result
    tvals = value.(model[:t])  # The prices t

    # Get the objective value
    obj_value = objective_value(model)

	flow = []
	for k in 1:length(forms)
		primal_repr = primal(forms[k])              # Primal representation
		prob_k = problem(primal_repr)               # Preprocessed problem of forms[k]
		Amap = used_arcs(prob_k)					# List of edge index of the solution path 
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
	
    return OptimizationResult(tvals, obj_value, preprocess_time, solve_time, freq_dict)
end



function NPP(input_file, output_file, verbose=false)
   	try
		# NPP SOLVING
		result = solve_and_get_values(input_file)
	
		# Access the stored values
		if verbose
			println("Prices (t): ", result.tvals)
			println("Objective Value: ", result.obj_value)
			println("Preprocessing Time: ", result.preprocess_time, " seconds")
			println("Solving Time: ", result.solve_time, " seconds")
		end
		
		# Save the result to a file
		save_result(result, output_file)
	catch
		# code to handle any exception
		println("An error occurred.",input_file)
		return
	end
end


function main(args)
    
    if length(args) == 2
        input_file = args[1]
        output_file = args[2]
        NPP(input_file, output_file)
        
    elseif length(args) == 1
        input_file = args[1]
        data = CSV.read(input_file, DataFrame)

        for row in eachrow(data)
            input_file = row.input_file
            output_file = row.output_file
            println(input_file )
            println(output_file)
            NPP(input_file, output_file)
        end
    else
    	println("invalid")
    end
end

if Main == @__MODULE__
    main(ARGS)
end

# Example usage 
# $ julia script.jl '/path/to/existing_file.json' '/path/to/future_output.json'
# or
# $ julia script.jl '/path/to/existing_file.csv'
