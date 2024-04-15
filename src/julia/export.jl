using Random, JSON

# Define a struct to store the results
struct OptimizationResult
	id::AbstractString
    tvals::Vector{Float64}
    obj_value::Float64
    preprocess_time::Float64
    solve_time::Float64
    flow::Dict
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


if Main == @__MODULE__

	output_file = ARGS[1]

	# Create a fake list of OptimizationResult struct
	fake_results = []
	for i in 1:1000
		tval_dim = rand(1:200)
		flow_dim = rand(1:200)
		res = OptimizationResult(
				"id_$(i)",
				rand(tval_dim),  # tvals: random vector of length 10
				rand(),  # obj_value: random float
				rand(),  # preprocess_time: random float
				rand(),  # solve_time: random float
				Dict(j => rand() for j in 1:flow_dim)  # flow: dictionary with 5 random entries
			)
		push!(fake_results, res)
	end
    save_result_batch(fake_results, output_file)
end

