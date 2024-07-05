from preamble.preamble import *


PARAMETERS = config.test_compute_grid(__name__)
logger = config.log(**PARAMETERS['logger'])


def compute_grid_problem_generation(
                                    input_directory_or_file:str='',
                                    export_directory_grid:str='',
                                    export_directory_graphs:str='',
                                    export_directory_transformations:str='',
                                    output_filename:str='',
                                ):
    """
    This function, `compute_grid_problem_generation`, is used to generate a list of commands for processing JSON problem files found in a specified input directory.

    Parameters:
        input_directory (str, optional): The path to the directory containing the problem JSON files. Defaults to ''.
        export_directory_grid (str, optional): The path to the directory where the output grid file will be stored. Defaults to ''.
        export_directory_graphs (str, optional): The path to the directory where the output problem files will be stored. Defaults to ''.
        export_directory_transformations (str, optional): The path to the directory where the output transformation files will be stored. Defaults to ''.
        output_filename (str, optional): The name of the output file. If it does not end with '.txt', it will be appended. Defaults to ''.

    The function works by iterating over all JSON files in the input directory and its subdirectories. For each file, it creates a command string that calls a Python script with various arguments based on the input parameters and the current file. It then writes these command strings to an output file.
    Within this function, it is supposed that you have a problem directory with categories directorys and subcategories directorys. 
    Returns:
        The path to the output file containing the generated command list.
    """
    
    # Logic for file and directory existence                   
    # input_directory ? no -> return error  
    # export_directory_grid ? no -> create directory          
    # export_directory_graphs ? no -> create directory
    # export_directory_transformations ? no -> create directory
    param_combinaison = PARAMETERS['probleme_generation_combinaison']
    base_command = "python src/python/main.py option5 5-1 "
    command_list = []
    
    def make_command(command, **command_kwargs):
        command += ''.join([f'--{k} {v} ' for k,v in command_kwargs.items()])
        return command 
                        
                        
    def file_logic(input_directory, root, filename, export_directory_graphs, export_directory_transformations):
        
        original_problem_path = os.path.join(root, filename) 
        subdirectory = root.replace(input_directory, '').split(os.sep)
        base_name, ext = os.path.splitext(filename)
        
        # graphs
        output_directory_graphs = os.path.join(export_directory_graphs, *subdirectory, base_name)
        if not os.path.exists(output_directory_graphs):
            os.makedirs(output_directory_graphs)
            logger.info(f"directory created : {output_directory_graphs}")
                
        # Transformation
        output_directory_transformations = os.path.join(export_directory_transformations, *subdirectory, base_name)
        if not os.path.exists(output_directory_transformations):
            os.makedirs(output_directory_transformations)
            logger.info(f"directory created : {output_directory_transformations}")

        return original_problem_path, output_directory_graphs, output_directory_transformations
                        
    if os.path.isfile(input_directory_or_file):
        filename = os.path.basename(input_directory_or_file) 
        input_directory = os.path.dirname(input_directory_or_file)
        root =  input_directory
        
        original_problem_path, \
        output_directory_graphs, \
        output_directory_transformations = file_logic(
                                                    input_directory,
                                                    root, 
                                                    filename, 
                                                    export_directory_graphs,
                                                    export_directory_transformations
                                                    )
                                    
       
        
        for (num_partitions, min_sub_length, max_sub_length, number_not_trivial_class, H4, batch_size) in param_combinaison:
            command_kwargs = {
                'num_partitions':num_partitions,
                'min_sub_length':min_sub_length,
                'max_sub_length':max_sub_length,
                'number_not_trivial_class':number_not_trivial_class,
                'H4':H4,
                'input_file':original_problem_path,
                'export_directory_graphs':output_directory_graphs,
                'export_directory_transformations':output_directory_transformations,
                'batch_size':batch_size
            }
            command = make_command(base_command, **command_kwargs)
            command_list.append(command)
        
    else:
        input_directory = input_directory_or_file
        # problem_making
        for root, dirs, files in os.walk(input_directory):
            for filename in files:
                if filename.endswith(".json"):
                
                    original_problem_path, \
                    output_directory_graphs, \
                    output_directory_transformations = file_logic(
                                                                input_directory,
                                                                root, 
                                                                filename, 
                                                                export_directory_graphs,
                                                                export_directory_transformations
                                                                )
                    
                    for (num_partitions, min_sub_length, max_sub_length, number_not_trivial_class, H4, batch_size) in param_combinaison:
                        command_kwargs = {
                                        'num_partitions':num_partitions,
                                        'min_sub_length':min_sub_length,
                                        'max_sub_length':max_sub_length,
                                        'number_not_trivial_class':number_not_trivial_class,
                                        'H4':H4,
                                        'input_file':original_problem_path,
                                        'export_directory_graphs':output_directory_graphs,
                                        'export_directory_transformations':output_directory_transformations,
                                        'batch_size':batch_size
                                    }
                        command = make_command(base_command, **command_kwargs)
                        command_list.append(command)
    
    if not output_filename.endswith('.sh'):
        output_filename += '.sh'
        
    output_file = os.path.join(export_directory_grid, output_filename)
    with open(output_file, 'w') as f:
        preamble = [
            "#!/bin/bash",
            "#SBATCH --cpus-per-task=1",
            "#SBATCH --mem=1G",
            "#SBATCH --time=0:10:00",
            "#SBATCH --output=/dev/null",
            "#SBATCH --partition=optimum",
            "module load python/3.12.0",
            "source venev/bin/activate",
            "module load julia",
            "module load gurobi"
        ]
        
        for e in preamble:
            f.write(e+'\n')

        for command in command_list:
            f.write(command)
            f.write('\n')
        f.write('sleep 60')
        
    logger.info(f"Compute grid exported : {output_file}")
        
    return output_file
    
def compute_grid_merging(
                        input_directory_graphs:str,
                        input_directory_transformations:str,
                        min_element:int,
                        max_element:int,
                        export_directory_grid:str,
                        output_filename:str
                        ):
    command_list = []
    # it is supposed that input_directory_graphs have the same structure as input_directory_transformations
    for dirpath, dirnames, filenames in os.walk(input_directory_graphs):
        for filename in filenames:
            if filename.endswith('.pkl'):
                idt = dirpath.replace(input_directory_graphs, input_directory_transformations)
                command_list.append(f"python src/python/main.py option5 5-2 --input_directory_graphs {dirpath} --input_directory_transformations {idt} --min_element {min_element} --max_element {max_element}")
                break
                
                
    # Exporting the compute grid
    if not output_filename.endswith('.sh'):
        output_filename += '.sh'
        
    output_file = os.path.join(export_directory_grid, output_filename)
    with open(output_file, 'w') as f:
        preamble = [
                "#!/bin/bash",
                "#SBATCH --cpus-per-task=1",
                "#SBATCH --mem=1G",
                "#SBATCH --time=0:5:00",
                "#SBATCH --output=/dev/null",
                "#SBATCH --partition=optimum",
                "module load python/3.12.0",
                "source venev/bin/activate",
            ]
        
        for e in preamble:
            f.write(e+'\n')

        for command in command_list:
            f.write(command)
            f.write('\n')
            
        f.write('sleep 60')
        
    logger.info(f"Compute grid exported : {output_file}")
        
    return output_file
    
                
    
def compute_grid_julia(
                        input_directory_graphs:str,
                        export_directory_grid:str,
                        export_directory_results:str,
                        output_filename:str,
                        independant:bool=True
                        ):
                            
    # Logic for file and directory existence                   
    # input_directory_graphs ? no -> return error  
    # export_directory_grid ? no -> create directory          
    # export_directory_results ? no -> create directory
    i = 1
    command_list = []
    output_name_list = []
    for root, dirs, files in os.walk(input_directory_graphs):
        for filename in files:
        
            if filename.endswith(".json") or filename.endswith(".pkl"):
                problem_path = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subdirectory = root.replace(input_directory_graphs, '').split(os.sep)
                
                # Results
                output_directory_results = os.path.join(export_directory_results, *subdirectory)
                if not os.path.exists(output_directory_results):
                    os.makedirs(output_directory_results)
                    logger.info(f"directory created : {output_directory_results}")
                
                
                prefix = f"{'%06d' % i}"
                output_result_file = os.path.join(output_directory_results, f"{base_name}.json")
                
                
                command = f"julia src{os.sep}julia{os.sep}script.jl {problem_path} {output_result_file}"
                command_list.append(command)
                output_name_list.append(base_name)
        
    h,m,s = PARAMETERS['h_limit'], PARAMETERS['m_limit'], PARAMETERS['s_limit']
    if independant:
        for output_filename, command in zip(output_name_list, command_list):
        
            # Exporting the compute grid
            if not output_filename.endswith('.sh'):
                output_filename += '.sh'
            
            output_file = os.path.join(export_directory_grid, output_filename)
            with open(output_file, 'w') as f:
                preamble = [
                        "#!/bin/bash",
                        "#SBATCH --cpus-per-task=2",
                        "#SBATCH --mem=5G",
                        f"#SBATCH --time={h}:{m}:{s}",
                        "#SBATCH --output=/dev/null",
                        "#SBATCH --partition=optimum",
                        "module load python/3.12.0",
                        "source venev/bin/activate",
                        "module load julia",
                        "module load gurobi"
                    ]
                
                for e in preamble:
                    f.write(e+'\n')

                #for command in command_list:
                f.write(command)
                f.write('\n')
                f.write('sleep 60')
                
            logger.info(f"Compute grid exported : {output_file}")
    
    else:
        # Exporting the compute grid
        if not output_filename.endswith('.sh'):
            output_filename += '.sh'
        
        output_file = os.path.join(export_directory_grid, output_filename)
        with open(output_file, 'w') as f:
            preamble = [
                    "#!/bin/bash",
                    "#SBATCH --cpus-per-task=1",
                    "#SBATCH --mem=5G",
                    f"#SBATCH --time={h}:{m}:{s}",
                    "#SBATCH --output=/dev/null",
                    "#SBATCH --partition=optimum",
                    "module load python/3.12.0",
                    "source venev/bin/activate",
                    "module load julia",
                    "module load gurobi"
                ]
            
            for e in preamble:
                f.write(e+'\n')

            for command in command_list:
                f.write(command)
                f.write('\n')
            f.write('sleep 60')
            
        logger.info(f"Compute grid exported : {output_file}")
