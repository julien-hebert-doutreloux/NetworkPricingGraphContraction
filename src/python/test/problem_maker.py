from preamble.preamble import *
from gamma.common import npp_from_json, set_of_frozenset, json_compression, to_json
from gamma.gamma import GammaNPP
from gamma.rules import make_rules, Rules
from unit_test.tools import timing_decorator

PARAMETERS = config.test_problem_maker(__name__)
logger = config.log(**PARAMETERS['logger'])


@timing_decorator
def main(
        num_partitions:int,
        min_sub_length:int,
        max_sub_length:int,
        number_not_trivial_class:int,
        H4:bool=False,
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
    number_not_trivial_class (int): The number of none trivial equivalence class in partition. Default is 3.
    H4 (bool): Applied the local hypothesis for making the partition. Default is False.
    batch_size (int): The number of problem in one file. Default is 1000.
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
                edge.cost = max(int(round(edge.cost, 0)), 1)
                
            # only integer cost
            else:
                edge.cost = max(int(round(edge.cost, 0)), 1)
           
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
            problem['demand'] = max(int(round(problem['demand'], 0)), 1)
            
    preprocessing()
    
    # Compatibility graph extraction
    compatibility_graph = make_rules(edges, H4)
    if all(map(lambda x: x == set(), compatibility_graph.values())):
        logger.warning(f"Only the trivial partition is feasible")
        return
        
    logger.debug(f"Number of tolled edge : {len(compatibility_graph)}")
    minimal = all(map(lambda v: len(v)>1, compatibility_graph.values()))
    
    if not minimal:
        logger.debug("Rules not minimal")
        compatibility_graph = {k:v for k,v in compatibility_graph.items() if len(v)>1}
        
    compatibility_graph = Rules(compatibility_graph)
    
    difference = set(edges) - set(compatibility_graph)
    singleton = list(map(lambda x: (x,), difference))
    
    # Random Partition
    partitions = compatibility_graph.random_partition(
                                                        num_partitions,
                                                        min_sub_length,
                                                        max_sub_length,
                                                        number_not_trivial_class,
                                                        )
    #for partition in partitions:
    #    logger.debug(list(map(lambda x: list(map(str, x)), partition)))
        
    # trivial partition first
    trivial_partition = set_of_frozenset([(e, ) for e in edges])
    if trivial_partition in partitions:
        partitions.remove(trivial_partition)
    partitions.insert(0, trivial_partition)
    
    logger.debug(f"number of partition found: {len(partitions)}")
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
        #logger.debug(number)
        filename = f"{number}-NPP-{base_filename}"
        id_ = f"{number}-{min_sub_length}-{max_sub_length}-{number_not_trivial_class}-{int(H4)}-NPP-{base_filename}"
        if batch_size == 1 or i == 0:
            
            # indivudual export
            # Export NPP in JSON
            problem_file = to_json(g_gamma.image_problem_to_dict(), export_folder_problems, filename)
            tranformation_file = to_json(g_gamma.transformation_to_dict(), export_folder_transformations, filename)
            
            logger.info(f'NPP JSON file created : {problem_file}')
            logger.info(f'Transformation JSON file created : {tranformation_file}')
        
        else:
            if (i%(batch_size+1))==0 or i==1:
                transformations_array.append([])
                problems_array.append([])
                
            logger.debug(f"created problem id_ {id_}")
            
            problems_array[-1].append(
                                    (id_, g_gamma.image_problem_to_dict())
                                )
            
            transformations_array[-1].append(
                                        (id_, g_gamma.transformation_to_dict())
                                    )
    
    if batch_size > 1:
        for j, (p_batch, t_batch) in enumerate(zip(problems_array, transformations_array), start=1):
            # Export problems
            prefix = f"{'%06d' % len(p_batch)}-{min_sub_length}-{max_sub_length}-{number_not_trivial_class}-{int(H4)}"
            filename = f"{'%06d' % j}-{prefix}-NPP-{base_filename}.pkl"
            problems_file = os.path.join(export_folder_problems, filename)
            json_compression(p_batch, problems_file)
            
            # Export transformation
            filename = f"{'%06d' % j}-{prefix}-NPP-{base_filename}.pkl"
            transformations_file = os.path.join(export_folder_transformations, filename)
            json_compression(t_batch, transformations_file)
            
            logger.info(f'NPP batch PKL file created : {problems_file}')
            logger.info(f'Transformation batch PKL file created : {transformations_file}')
            
            
            
            
def merging_batch(input_folder, super_batch_size=10, erease=True):

    ### File-Folder logic
    ### ...
    
    if super_batch_size == -1:
        super_batch_size = 10**6
        
    if super_batch_size <=1:
        logger.warning(f"Invalid super_batch_size : {super_batch_size}")
        
        
    combined_data = {}
    i = 1
    j = 1
    # iterate over all PKL files in the directory
    for filename in os.listdir(input_folder):
        if filename.endswith('.pkl'):
        
            if i%(super_batch_size+1) == 0 or i==1:
                number = "%06d" % j
                
                if i>1:
                    output_file = os.path.join(input_folder, f'{number}-super_batch.pkl')
                    with open(output_file, 'wb') as f:
                        # save the combined data to a new PKL file
                        pickle.dump(combined_data, f)
                        logger.info(f"super_batch file has been created : {output_file}")
                        
                    j+=1
                combined_data = {}
            input_file = os.path.join(input_folder, filename)
            with open(input_file, 'rb') as f:
                data = pickle.load(f)
                combined_data.update(data)
            i+=1
            
            if erease:
                os.remove(input_file)

                
    
                    
            

    
# number in the filename
#batch_number, batch_size, min_sub_len, max_sub_len, number_not_trivial_class, H4
