function NPP(input_file, output_file, verbose=false)
   	try
		# NPP SOLVING
		result = solve_and_get_values(import_problem_from_file(input_file))
	
		# Access the stored values
		if verbose
			println("Prices (t): ", result.tvals)
			println("Objective Value: ", result.obj_value)
			println("Preprocessing Time: ", result.preprocess_time, " seconds")
			println("Solving Time: ", result.solve_time, " seconds")
		end
		
		# Save the result to a file
		#save_result(result, output_file)
		return result
		
	catch
		# code to handle any exception
		println("An error occurred.", input_file)
		return false
	end
end


elseif length(args) == 1
		# Batch with seperated solution file
		# input file: csv with two column (input, output)
        input_file = args[1]
        data = CSV.read(input_file, DataFrame)
		result_array = []
		
        for row in eachrow(data)
            input_file = row.input_file
            output_file = row.output_file
            println(input_file )
            println(output_file)
            
            result = solve_and_get_values(import_problem_from_file(input_file))
            
            if result
	    		save_result_individual(result, output_file)
		    end
		end
		
    else
    		println("invalid")
    end
    
    
    
    
    
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

