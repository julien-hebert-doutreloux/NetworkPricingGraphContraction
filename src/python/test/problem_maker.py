from preamble.preamble import *
from gamma.common import from_json
from gamma.gamma import GammaNPP
from gamma.rules import make_rules, Rules

def main(
        num_partitions=1000,
        max_sub_length=3,
        input_file='',
        export_folder_problems='',
        export_folder_transformations='',
        verbose=False):
    
    """
    This function partitions a graph into subsets and exports the resulting transformations and problems.

    Parameters:
    num_partitions (int): The number of partitions to create. Default is 1000.
    max_sub_length (int): The maximum length of the element in a partition. Default is 3.
    input_file (str): The path to the input JSON file containing the graph data. Default is an empty string.
    export_folder (str): The path to the output folder where the results will be saved. Default is an empty string.
    verbose (bool): If True, prints some information about the process. Default is True.

    Returns:
    None
    """
    
    # Check if the file does not exists
    if not os.path.isfile(input_file):
        print(f"Error: The specified file does not exists: {input_file}")
        return False
        
    # Check if the export_folder exists
    if not os.path.isdir(export_folder_problems):
        print(f"Error: The specified directory does not exist: {export_folder_problems}")
        return False
        
    # Check if the export_folder exists
    if not os.path.isdir(export_folder_transformations):
        print(f"Error: The specified directory does not exist: {export_folder_transformations}")
        return False

    # Import JSON
    # Extraction Graph (nodes, edges)
    # Extraction Problem
    nodes, edges, problems = from_json(input_file)
    
    # Compatibility graph extraction
    compatibility_graph = make_rules(edges)
    minimal = all(map(lambda v: len(v)>1, compatibility_graph.values()))
    
    if not minimal:
        print("Rules not minimal")
        compatibility_graph = {k:v for k,v in compatibility_graph.items() if len(v)>1}
    compatibility_graph = Rules(compatibility_graph)
    
    
    difference = set(edges) - set(compatibility_graph)
    singleton = list(map(lambda x: (x,), difference))
    
    # Random Partition
    partitions = compatibility_graph.random_partition(num_partitions, max_sub_length)
    
    # trivial partition first
    partitions.insert(0, [(e, ) for e in edges])
    
    base_filename, file_extension = os.path.splitext(os.path.basename(input_file))
    for i, partition in enumerate(partitions, start=0):
        partition = list(map(tuple, partition))
        partition += singleton
        
        if (len(edges) != sum(map(len, partition))):
            print(len(edges))
            print(sum(map(len, partition)))
            print(100*"X")
            print("Error : Not a partition")
            return False
            
        # Gamma
        transformation = GammaNPP(nodes, edges, partition, problems)
        
        # Export NPP in JSON
        number = "%06d" % i
        filename = f"{number}-NPP-{base_filename}"
        problem_file = transformation.export(export_folder_problems, filename)
        
        # Export edge partition to pickle
        filename=f"{number}-T-{base_filename}"
        tranformation_file = transformation.export_transformation(export_folder_transformations, filename)
        
        if verbose:
            transformation.summary()
            print(f'NPP JSON file created : {problem_file}')
            print(f'Transformation PKL file created : {tranformation_file}')
            print(100*'#')
                
    # python complete_test.py --num_partition 10 --max_sub_length 3 --input_file '/home/fiftyfour/Documents/Code/other/o50-10.json' --export_folder '/home/fiftyfour/Documents/Code/other' --verbose true
    
    

