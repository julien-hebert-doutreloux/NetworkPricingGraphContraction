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
