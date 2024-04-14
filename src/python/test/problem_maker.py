from preamble.preamble import *
from gamma.common import npp_from_json, set_of_frozenset, json_compression, to_json
from gamma.gamma import GammaNPP
from gamma.rules import make_rules, Rules
from unit_test.tools import timing_decorator

PARAMETERS = config.test_problem_maker(__name__)
logger = config.log(**PARAMETERS['logger'])


@timing_decorator
def main(
        num_partitions:int=1000,
        min_sub_length:int=3,
        max_sub_length:int=3,
        min_not_trivial_class:int=3,
        max_not_trivial_class:int=3,
        batch_size:int=1000,
        input_file:str='',
        export_folder_problems:str='',
        export_folder_transformations:str='',
    ):
    
    """
    This function partitions a graph into subsets and exports the resulting transformations and problems.

    Parameters:
    num_partitions (int): The number of partitions to create. Default is 1000.
    min_sub_length (int): The minimum length of the element in a partition. Default is 3.
    max_sub_length (int): The maximum length of the element in a partition. Default is 3.
    min_not_trivial_class (int): The minimum number of none trivial equivalence class in partition. Default is 3.
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
    
    
    base_filename, file_extension = os.path.splitext(os.path.basename(input_file))
    
    # Import JSON
    # Extraction Graph (nodes, edges)
    # Extraction Problem
    nodes, edges, problems = npp_from_json(input_file)
    
    def preprocessing():
        for edge in edges:
            # every tolled arc starting cost is 1
            if edge.toll:
                edge.cost = 1
            # only integer cost
            else:
                edge.cost = max(round(edge.cost, 0), 1)
           
        # Problems structures
        #[...,
        #    {
        #        "orig": 1,
        #        "dest": 4,
        #        "demand": 1.0
        #    },... 
        #]
        
        # only integer demand
        for problem in problems:
            problem['demand'] = max(round(problem['demand'], 0), 1)
            
    preprocessing()
    
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
    partitions = compatibility_graph.random_partition(
                                                        num_partitions,
                                                        min_sub_length,
                                                        max_sub_length,
                                                        min_not_trivial_class,
                                                        max_not_trivial_class
                                                        )
    #for partition in partitions:
    #    logger.debug(list(map(lambda x: list(map(str, x)), partition)))
        
    # trivial partition first
    trivial_partition = set_of_frozenset([(e, ) for e in edges])
    if trivial_partition in partitions:
        partitions.remove(trivial_partition)
    partitions.insert(0, trivial_partition)
    
    transformations_array = []
    problems_array = []
    for i, partition in enumerate(partitions, start=0):
    
        if i != 0:
            partition = list(map(tuple, partition))
            partition += singleton
        
        if (len(edges) != sum(map(len, partition))):
            logger.warning('Not a partition')
            logger.debug(list(map(str, set(edges) - set(chain.from_iterable(partition)))))
            return
            
            
        # Gamma
        g_gamma = GammaNPP(nodes, edges, partition, problems)
        
        number = "%06d" % i
        filename = f"{number}-NPP-{base_filename}"
        if batch_size == 1 or i == 0:
            
            # indivudual export
            # Export NPP in JSON
            problem_file = to_json(g_gamma.image_problem_to_dict(), export_folder_problems, filename)
            
            filename+="-T"
            tranformation_file = to_json(g_gamma.transformation_to_dict(), export_folder_transformations, filename)
            
            logger.info(f'NPP JSON file created : {problem_file}')
            logger.info(f'Transformation PKL file created : {tranformation_file}')
        
        else:
            if (i%batch_size)==0 or i==1:
                transformations_array.append([])
                problems_array.append([])
                
            problems_array[-1].append(
                                    (filename, g_gamma.image_problem_to_dict())
                                )
            
            transformations_array[-1].append(
                                        (filename, g_gamma.transformation_to_dict())
                                    )
    
    if batch_size > 1:
        for j, (p_batch, t_batch) in enumerate(zip(problems_array, transformations_array), start=1):
            # Export problems
            prefix = f"{'%06d' % len(p_batch)}-{min_sub_length}-{max_sub_length}-{min_not_trivial_class}-{max_not_trivial_class}"
            filename = f"{'%06d' % j}-{prefix}-NPP-{base_filename}.pkl"
            problems_file = os.path.join(export_folder_problems, filename)
            json_compression(p_batch, problems_file)
            
            # Export transformation
            filename = f"{'%06d' % j}-{prefix}-NPP-{base_filename}.pkl"
            transformations_file = os.path.join(export_folder_transformations, filename)
            json_compression(t_batch, transformations_file)
            
            logger.info(f'NPP batch PKL file created : {problems_file}')
            logger.info(f'Transformation batch PKL file created : {transformations_file}')
                    
# number in the filename
#batch_number, batch_size, min_sub_len, max_sub_len, min_not_trivial_class, max_not_trivial_class
