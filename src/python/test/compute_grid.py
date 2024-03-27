from preamble.preamble import *

def compute_grid_problem_generation(
                                        num_partitions=100,
                                        max_sub_length=3,
                                        input_folder='',
                                        export_folder_grid='',
                                        export_folder_problems='',
                                        export_folder_transformations='',
                                        output_filename='',
                                        verbose=False
                                        ):
    command_list = []

    # problem_making
    for root, dirs, files in os.walk(input_folder):
        for filename in files:
            if filename.endswith(".json"):
                original_problem_path = os.path.join(root, filename)
                subfolder_name = original_problem_path.split(os.sep)[-2]
                folder_name, _ = os.path.splitext(os.path.basename(original_problem_path))
                
                # Problems
                output_folder_problems = os.path.join(export_folder_problems, subfolder_name,folder_name)
                if not os.path.exists(output_folder_problems):
                    if verbose:
                        os.makedirs(output_folder_problems)
                        print(f"Folder created : {output_folder_problems}")
                        
                # Transformation
                output_folder_transformations = os.path.join(export_folder_transformations, subfolder_name, folder_name)
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
                        export_folder_results='',
                        output_filename='',
                        verbose=False
                        ):

    # julia
    for root, dirs, files in os.walk(input_folder):
        for filename in files:
            if filename.endswith(".json"):
                original_problem_path = os.path.join(root, filename)
                subfolder_name = original_problem_path.split(os.sep)[-2]
                folder_name, _ = os.path.splitext(os.path.basename(original_problem_path))
                
                # Results
                output_folder_results = os.path.join(export_folder_results, subfolder_name, folder_name)
                if not os.path.exists(output_folder_results):
                    if verbose:
                        os.makedirs(output_folder_results)
                        print(f"Folder created : {output_folder_results}")
                        
