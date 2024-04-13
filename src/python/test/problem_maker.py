from preamble.preamble import *
from gamma.common import from_json, set_of_frozenset
from gamma.gamma import GammaNPP
from gamma.rules import make_rules, Rules
from unit_test.tools import timing_decorator

PARAMETERS = config.test_problem_maker(__name__)
logger = config.log(**PARAMETERS['logger'])


@timing_decorator
def main(
        num_partitions:int=1000,
        max_sub_length:int=3,
        max_not_trivial_class:int=3,
        input_file:str='',
        export_folder_problems:str='',
        export_folder_transformations:str='',
    ):
    
    """
    This function partitions a graph into subsets and exports the resulting transformations and problems.

    Parameters:
    num_partitions (int): The number of partitions to create. Default is 1000.
    max_sub_length (int): The maximum length of the element in a partition. Default is 3.
    max_not_trivial_class (int): The maximum number of none trivial equivalence class in partition. Default is 3.
    input_file (str): The path to the input JSON file containing the graph data. Default is an empty string.
    export_folder (str): The path to the output folder where the results will be saved. Default is an empty string.
    """
    
    # Check if the file does not exists
    if not os.path.isfile(input_file):
        logger.warning(f"The specified file does not exists: {input_file}")
        return
        
    # Check if the export_folder exists
    if not os.path.isdir(export_folder_problems):
        logger.warning(f"The specified directory does not exist: {export_folder_problems}")
        os.makedirs(export_folder_problems)
        logger.info(f"The specified directory has been created: {export_folder_problems}")
        
    # Check if the export_folder exists
    if not os.path.isdir(export_folder_transformations):
        logger.warning(f"The specified directory does not exist: {export_folder_transformations}")
        os.makedirs(export_folder_transformations)
        logger.info(f"The specified directory has been created: {export_folder_transformations}")

    # Import JSON
    # Extraction Graph (nodes, edges)
    # Extraction Problem
    nodes, edges, problems = from_json(input_file)
    
    # Compatibility graph extraction
    compatibility_graph = make_rules(edges)
    minimal = all(map(lambda v: len(v)>1, compatibility_graph.values()))
    
    if not minimal:
        logger.debug.append("Rules not minimal")
        compatibility_graph = {k:v for k,v in compatibility_graph.items() if len(v)>1}
        
    compatibility_graph = Rules(compatibility_graph)
    
    difference = set(edges) - set(compatibility_graph)
    singleton = list(map(lambda x: (x,), difference))
    
    # Random Partition
    partitions = compatibility_graph.random_partition(num_partitions, max_sub_length, max_not_trivial_class)
    for partition in partitions:
        logger.debug(list(map(lambda x: list(map(str, x)), partition)))
    # trivial partition first
    partitions.insert(0, set_of_frozenset([(e, ) for e in edges]))
    
    base_filename, file_extension = os.path.splitext(os.path.basename(input_file))
    for i, partition in enumerate(partitions, start=0):
        if i != 0:
            partition = list(map(tuple, partition))
            partition += singleton
        
        if (len(edges) != sum(map(len, partition))):
            logger.warning('Not a partition')
            return
            
        # Gamma
        transformation = GammaNPP(nodes, edges, partition, problems)
        
        # Export NPP in JSON
        number = "%06d" % i
        filename = f"{number}-NPP-{base_filename}"
        problem_file = transformation.export(export_folder_problems, filename)
        
        # Export edge partition to pickle
        filename+="-T"
        tranformation_file = transformation.export_transformation(export_folder_transformations, filename)
        
        logger.info(f'NPP JSON file created : {problem_file}')
        logger.info(f'Transformation PKL file created : {tranformation_file}')
        
