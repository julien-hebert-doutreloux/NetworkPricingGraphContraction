from preamble.preamble import *

PARAMETERS = config.test_compute_grid(__name__)
logger = config.log(**PARAMETERS['logger'])
def compute_grid_problem_generation(
                                    input_folder:str='',
                                    export_folder_grid:str='',
                                    export_folder_problems:str='',
                                    export_folder_transformations:str='',
                                    output_filename:str='',
                                ):
    """
    This function, `compute_grid_problem_generation`, is used to generate a list of commands for processing JSON problem files found in a specified input folder.

    Parameters:
        input_folder (str, optional): The path to the folder containing the problem JSON files. Defaults to ''.
        export_folder_grid (str, optional): The path to the folder where the output grid file will be stored. Defaults to ''.
        export_folder_problems (str, optional): The path to the folder where the output problem files will be stored. Defaults to ''.
        export_folder_transformations (str, optional): The path to the folder where the output transformation files will be stored. Defaults to ''.
        output_filename (str, optional): The name of the output file. If it does not end with '.txt', it will be appended. Defaults to ''.

    The function works by iterating over all JSON files in the input folder and its subdirectories. For each file, it creates a command string that calls a Python script with various arguments based on the input parameters and the current file. It then writes these command strings to an output file.
    Within this function, it is supposed that you have a problem folder with categories folders and subcategories folders. 
    Returns:
        The path to the output file containing the generated command list.
    """
    
    # Logic for file and folder existence                   
    # input_folder ? no -> return error  
    # export_folder_grid ? no -> create folder          
    # export_folder_problems ? no -> create folder
    # export_folder_transformations ? no -> create folder
    param_combinaison = PARAMETERS['probleme_generation_combinaison']
    command_list = []
    
    
    # problem_making
    for root, dirs, files in os.walk(input_folder):
        for filename in files:
            if filename.endswith(".json"):
            
                original_problem_path = os.path.join(root, filename)
                subfolder = root.replace(input_folder, '').split(os.sep)
                base_name, ext = os.path.splitext(filename)
                
                # Problems
                output_folder_problems = os.path.join(export_folder_problems, *subfolder, base_name)
                if not os.path.exists(output_folder_problems):
                    os.makedirs(output_folder_problems)
                    logger.info(f"Folder created : {output_folder_problems}")
                        
                # Transformation
                output_folder_transformations = os.path.join(export_folder_transformations, *subfolder, base_name)
                if not os.path.exists(output_folder_transformations):
                    os.makedirs(output_folder_transformations)
                    logger.info(f"Folder created : {output_folder_transformations}")
                
                
                for (num_partitions, min_sub_length, max_sub_length, number_not_trivial_class, H4, batch_size) in param_combinaison:
                    command = f"""python src/python/main.py option5 5-1 --num_partitions {num_partitions} --min_sub_length {max_sub_length} --max_sub_length {max_sub_length} --number_not_trivial_class {number_not_trivial_class} --H4 {H4} --input_file {original_problem_path} --export_folder_problems {output_folder_problems} --export_folder_transformations {output_folder_transformations} --batch_size {batch_size}"""
                                
                    command_list.append(command)
    
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_folder_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    logger.info(f"Compute grid exported : {output_file}")
        
    return output_file
    
    
def compute_grid_julia(
                        input_folder='',
                        export_folder_grid='',
                        export_folder_results='',
                        output_filename='',
                        ):
                            
    # Logic for file and folder existence                   
    # input_folder ? no -> return error  
    # export_folder_grid ? no -> create folder          
    # export_folder_results ? no -> create folder
    
    command_list = []
    for root, dirs, files in os.walk(input_folder):
        for filename in files:
        
            
            if filename.endswith(".json") or filename.endswith(".pkl"):
                problem_path = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subfolder = root.replace(input_folder, '').split(os.sep)
                
                # Results
                output_folder_results = os.path.join(export_folder_results, *subfolder)
                if not os.path.exists(output_folder_results):
                    os.makedirs(output_folder_results)
                    logger.info(f"Folder created : {output_folder_results}")
                
                output_result_file = os.path.join(output_folder_results, f"{base_name}.json")
                    
                
                command = f"julia src{os.sep}julia{os.sep}script.jl {problem_path} {output_result_file}"
                command_list.append(command)
        
    

    # Exporting the compute grid
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_folder_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    logger.info(f"Compute grid exported : {output_file}")
        
    return output_file





            


























def compute_grid_process_result_before_vs_after(
                                                input_folder_graphs:str='',
                                                input_folder_transformations:str='',
                                                input_folder_results:str='',
                                                export_folder_grid:str='',
                                                export_folder_results:str='',
                                                output_filename:str='',
                                                batch_size:int=1,
                                            ):
    # Logic for file and folder existence                   
    # input_folder_graphs ? no -> return error  
    # input_folder_transformations ? no -> return error          
    # input_folder_results ? no -> return error
    # export_folder_grid ? no -> create folder
    # export_folder_results ? no -> create folder
    
    command_list = []
    input_output_list = []
    for root, dirs, files in os.walk(input_folder_graphs):
        for filename in files:
            if filename.endswith(".json"):
                problem_path = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subfolder = root.replace(input_folder_graphs, '').split(os.sep)
                
                number = base_name.split('-')[0]          
                input_g_file = os.path.join(root,filename.replace(number,'000000')) # original graph problem
                input_t_file = os.path.join(input_folder_transformations, *subfolder, f"{base_name}-T.pkl") # transformation file
                input_r_file = os.path.join(input_folder_results, *subfolder, f"{base_name}-RR{ext}") # raw result file of the transformed graph problem
                
                tmp_bool_1 = os.path.isfile(input_t_file)
                tmp_bool_2 = os.path.isfile(input_r_file)
                    
                #if not tmp_bool_1 or not tmp_bool_2:
                #    logger.warning(f"The problem file is not compatible: {problem_path}")
                if not tmp_bool_1:
                    logger.warning(f"The transformation file does not exists: {input_t_file}")
                if not tmp_bool_2:
                    logger.warning(f"The result file does not exists: {input_r_file}")
                
                if tmp_bool_1 and tmp_bool_2:
                    output_folder_results = os.path.join(export_folder_results, *subfolder)
                    
                    if not os.path.exists(output_folder_results):
                        os.makedirs(output_folder_results)
                        logger.info(f"Folder created : {output_folder_results}")
                    
                    output_r_file = f"{base_name}-PR.pkl"
                    command = f"python src/python/main.py option5 5-2 --before_graph_file {input_g_file} --after_graph_result_file {input_r_file} --transformation_file {input_t_file} --export_folder {output_folder_results} --output_filename {output_r_file}"
                    command_list.append(command)
                    
                    grtr = (input_g_file, input_r_file, input_t_file,output_folder_results, output_r_file)
                    input_output_list.append(grtr)
                    

    # Batch command
    if batch_size > 1 :
        command_list = []
        split_list = [input_output_list[i:i + batch_size] for i in range(0, len(input_output_list), batch_size)]
        for j, sublist in enumerate(split_list, start=1):
            output_file = os.path.join(export_folder_grid, f"result_process_batch_{j}.csv")
            
            with open(output_file, 'w') as f:
                f.write('before_graph_file,transformation_file,after_graph_result_file,export_folder,output_filename')
                f.write('\n')
                for (i, t, r, x, rr) in sublist:
                    f.write(f"{i},{t},{r},{x},{rr}")
                    f.write('\n')
            
            logger.info(f"Batch {j} exported: {output_file}")
            command = f"python src{os.sep}python{os.sep}main.py option5 5-3 --input_file {output_file}"
            command_list.append(command)
    
    
    # Exporting computing grid
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_folder_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    logger.info(f"Compute grid exported : {output_file}")
    
    return output_file
    
    
    
    

def compute_grid_stack_result_into_dataframe(
                                            input_folder_processed_results:str='',
                                            export_folder_dataframes:str='',
                                            export_folder_grid:str='',
                                            output_filename:str='',
                                            batch_size:int=1,
                                        ):
    command_list = []
    input_output_list = []
    for root, dirs, files in os.walk(input_folder_processed_results):
        for filename in files:
            if filename.endswith(".pkl"):
                
                processed_result_after_path = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subfolder = root.replace(input_folder_processed_results, '').split(os.sep)
                
                number = base_name.split('-')[0]
                processed_result_path_before = os.path.join(root,filename.replace(number, '000000')) # original graph problem
                
                if not os.path.exists(export_folder_dataframes):
                    os.makedirs(export_folder_dataframes)
                    logger.info(f"Folder created: {export_folder_dataframes}")

                export_edge_dataframe_file = os.path.join(export_folder_dataframes, "edge_dataframe.pkl")
                export_meta_dataframe_file = os.path.join(export_folder_dataframes, "meta_dataframe.pkl")
                
                command = f"python src/python/main.py option5 5-3 --input_process_result_file_before {processed_result_path_before} --input_process_result_file_after {processed_result_after_path} --export_edge_dataframe_file {export_edge_dataframe_file} --export_meta_dataframe_file {export_meta_dataframe_file}"
                command_list.append(command)
                input_output_list.append((
                                            processed_result_path_before,
                                            processed_result_after_path,
                                            export_edge_dataframe_file,
                                            export_meta_dataframe_file,
                                            ))
    ###
    if batch_size > 1:
        command_list = []
        split_list = [input_output_list[i:i + batch_size] for i in range(0, len(input_output_list), batch_size)]
        for i, sublist in enumerate(split_list, start=1):
            output_file = os.path.join(export_folder_grid, f"result_process_batch_{i}.csv")
            
            with open(output_file, 'w') as f:
                f.write('input_process_result_file_before,input_process_result_file_after,export_edge_dataframe_file,export_meta_dataframe_file')
                f.write('\n')
                for (iprfb, iprfa, eed, emd) in sublist:
                    f.write(f"{iprfb},{iprfa},{eed},{emd}")
                    f.write('\n')
            
            logger.info(f"Batch {i} exported: {output_file}")
            command = f"python src{os.sep}python{os.sep}main.py option5 5-5 --input_file {output_file}"
            command_list.append(command)
    ###       
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_folder_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    logger.info(f"Compute grid exported : {output_file}")
    
    return output_file
    
    

