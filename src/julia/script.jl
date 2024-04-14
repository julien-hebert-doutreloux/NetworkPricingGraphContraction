using JSON, CSV, DataFrames, BenchmarkTools, Distributed, FileIO, Pickle, Unmarshal
using NetPricing, JuMP, Gurobi

# Single core limitation
#ENV["JULIA_NUM_THREADS"] = "1"

# Define a struct to store the results
struct OptimizationResult
	id::AbstractString
    tvals::Vector{Float64}
    obj_value::Float64
    preprocess_time::Float64
    solve_time::Float64
    flow::Dict
end


# Save result
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
	open(filename, "w") do file
		write(file, json_data)
	end
end

# Import problem
function import_problem_from_file(file::AbstractString)
    # Import a problem from a file
    prob = read_problem(file)
    
	# Get the file name without the extension
	id = splitext(basename(file_name))[1]
	return prob, id
end

function import_problem_from_str(str::AbstractString)
	prob = unmarshal(Problem, JSON.parse(str)["problem"])
	return prob
end


function solve_and_get_values(prob::Problem, id::AbstractString)

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
	println(tvals)
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
	
    return OptimizationResult(id, tvals, obj_value, preprocess_time, solve_time, freq_dict)
end

function main(args)

    input_file = args[1]
    output_file = args[2]
    
    if endswith(input_file, ".json")
	    # Individual solver
		# input file : json
		# output file: json
		
	    result = solve_and_get_values(import_problem_from_file(input_file))
	    
	    if result
    		save_result_individual(result, output_file)
	    else
			println("An error occurred.", input_file)
		end
	    
    elseif endswith(input_file, ".pkl") & endswith(output_file, ".pkl") 
		# Batch solver and one compressed result output file
		# input file : path/to/input.gz
		# output file: path/to/output.gz
		
		results_array = []
	    
		# Read the compressed data from the file
		data = Pickle.load(open(input_file, "r"))
		# Loop over the data
		for item in data
			k, v = item
			result = solve_and_get_values(import_problem_from_str(JSON.json(v)), k)
			
			if result
				append!(results_array, result)
			else
				println("An error occurred.", k)
			end
		end
		
		save_result_batch(results_array, output_file)
		
	else
		println("An error occurred.", input_file)
	end
end

if Main == @__MODULE__
    main(ARGS)
end

# Example usage 
# $ julia script.jl '/path/to/existing_file.json' '/path/to/future_output.json'
# or
# $ julia script.jl '/path/to/existing_file.csv'







