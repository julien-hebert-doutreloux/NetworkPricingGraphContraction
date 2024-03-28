from preamble.preamble import *

def compute_grid_problem_generation(
                                    num_partitions:int=100,
                                    max_sub_length:int=3,
                                    input_folder:str='',
                                    export_folder_grid:str='',
                                    export_folder_problems:str='',
                                    export_folder_transformations:str='',
                                    output_filename:str='',
                                    verbose:bool=False
                                ):
    """
    This function, `compute_grid_problem_generation`, is used to generate a list of commands for processing JSON problem files found in a specified input folder.

    Parameters:
        num_partitions (int, optional): The number of partitions for the problem. Defaults to 100.
        max_sub_length (int, optional): The maximum length allowed for element of the partition. Defaults to 3.
        input_folder (str, optional): The path to the folder containing the problem JSON files. Defaults to ''.
        export_folder_grid (str, optional): The path to the folder where the output grid file will be stored. Defaults to ''.
        export_folder_problems (str, optional): The path to the folder where the output problem files will be stored. Defaults to ''.
        export_folder_transformations (str, optional): The path to the folder where the output transformation files will be stored. Defaults to ''.
        output_filename (str, optional): The name of the output file. If it does not end with '.txt', it will be appended. Defaults to ''.
        verbose (bool, optional): If True, it will print out certain messages. Defaults to False.

    The function works by iterating over all JSON files in the input folder and its subdirectories. For each file, it creates a command string that calls a Python script with various arguments based on the input parameters and the current file. It then writes these command strings to an output file.
    Within this function, it is supposed that you have a problem folder with categories folders and subcategories folders. 
    Returns:
        The path to the output file containing the generated command list.
    """
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
                    if verbose:
                        os.makedirs(output_folder_problems)
                        print(f"Folder created : {output_folder_problems}")
                        
                # Transformation
                output_folder_transformations = os.path.join(export_folder_transformations, *subfolder, base_name)
                if not os.path.exists(output_folder_transformations):
                    if verbose:
                        os.makedirs(output_folder_transformations)
                        print(f"Folder created : {output_folder_transformations}")
                
                command = f"python src/python/main.py option6 --num_partitions {num_partitions} --max_sub_length {max_sub_length} --input_file {original_problem_path} --export_folder_problems {output_folder_problems} --export_folder_transformations {output_folder_transformations} --verbose {verbose}"
                command_list.append(command)
    
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_folder_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    if verbose:
        print(f"Compute grid exported : {output_file}")
            
    return output_file
    
    
def compute_grid_julia(
                        input_folder='',
                        export_folder_grid='',
                        export_folder_results='',
                        output_filename='',
                        verbose=False
                    ):
    command_list = []
    for root, dirs, files in os.walk(input_folder):
        for filename in files:
            if filename.endswith(".json"):
                
                problem_path = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subfolder = root.replace(input_folder, '').split(os.sep)
                
                # Results
                output_folder_results = os.path.join(export_folder_results, *subfolder)
                if not os.path.exists(output_folder_results):
                    if verbose:
                        os.makedirs(output_folder_results)
                        print(f"Folder created : {output_folder_results}")
                        
                output_result_file = os.path.join(output_folder_results, f"{base_name}-RR.json")
                command = f"julia src{os.sep}julia{os.sep}script.jl -i {problem_path} -o {output_result_file}"
                command_list.append(command)
    
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_folder_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    if verbose:
        print(f"Compute grid exported : {output_file}")
            
    return output_file
                      

def compute_grid_process_result_before_vs_after(
                                input_folder_graphs:str='',
                                input_folder_transformations:str='',
                                input_folder_results:str='',
                                export_folder_grid:str='',
                                export_folder_results:str='',
                                output_filename:str='',
                                verbose=False
                                ):
    
    command_list = [] 
    
    for root, dirs, files in os.walk(input_folder_graphs):
        for filename in files:
            if filename.endswith(".json"):
                
                problem_path = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subfolder = root.replace(input_folder_graphs, '').split(os.sep)
                
                number = base_name.split('-')[0]          
                input_g_file = os.path.join(root,filename.replace(number,'000000'))
                input_t_file = os.path.join(input_folder_transformations, *subfolder, f"{base_name}-T.pkl")
                input_r_file = os.path.join(input_folder_results, *subfolder, f"{base_name}-RR{ext}")
                output_folder_results = os.path.join(export_folder_results, *subfolder)
                if not os.path.exists(output_folder_results):
                    if verbose:
                        os.makedirs(output_folder_results)
                        print(f"Folder created : {output_folder_results}")
                
                
                output_r_file = f"{base_name}-PR.pkl"
                
                
                command = f"python src/python/main.py option5 5-2 --before_graph_file {input_g_file} --after_graph_result_file {input_r_file} --transformation_file {input_t_file} --export_folder {output_folder_results} --output_filename {output_r_file} --verbose {verbose}"
                command_list.append(command)
            
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_folder_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    if verbose:
        print(f"Compute grid exported : {output_file}")
            
    return output_file
                
                
def compute_grid_stack_result_into_dataframe(
                                input_folder='',
                                export_folder='',
                                output_filename='',
                                verbose=False
                                ):
    ...

