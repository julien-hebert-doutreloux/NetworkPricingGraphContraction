using JSON, ArgParse, BenchmarkTools, Glob
using NetPricing, JuMP, Gurobi

# Single core limitation
ENV["JULIA_NUM_THREADS"] = "1"

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
        pprobs = preprocess(prob, maxpaths = 100)
    end
	
    # Create a model
    model, forms = std_model(pprobs)
    
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

function parse_commandline()
    s = ArgParseSettings()

	@add_arg_table s begin
		"--input", "-i" 
		    help = "Input json file problem"
		"--output", "-o"
		    help = "Output folder"
	end

    return parse_args(s)
end

function main()
    
    parsed_args = parse_commandline()
    input_file = parsed_args["input"]
    output_file = parsed_args["output"]

	

	#for input_file in glob("*.json", input_folder)
	name, extension = splitext(input_file)

	println(input_file)
	println(output_file)
	
	# NPP SOLVING
	result = solve_and_get_values(input_file)
	
	# Access the stored values
	#println("Prices (t): ", result.tvals)
	#println("Objective Value: ", result.obj_value)
	#println("Preprocessing Time: ", result.preprocess_time, " seconds")
	#println("Solving Time: ", result.solve_time, " seconds")
	
	# Save the result to a file
	save_result(result, output_file)
	#end

end

# Run the script only if it is the main program
if Main == @__MODULE__
    main()
end

# Example usage
# $ julia script.jl -i '/path/to/file.json' -o '/path/to/output.json'
