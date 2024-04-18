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
        export_directory_problems:str='',
        export_directory_transformations:str='',
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
    export_directory (str): The path to the output directory where the results will be saved. Default is an empty string.
    """
    
    # Check if the file does not exists
    if not os.path.isfile(input_file):
        logger.warning(f"The specified file does not exists: {input_file}")
        return
        
    # Check if the export_directory exists
    if not os.path.isdir(export_directory_problems):
        logger.warning(f"The specified directory does not exist: {export_directory_problems}")
        os.makedirs(export_directory_problems)
        logger.info(f"The specified directory has been created: {export_directory_problems}")
        
    # Check if the export_directory exists
    if not os.path.isdir(export_directory_transformations):
        logger.warning(f"The specified directory does not exist: {export_directory_transformations}")
        os.makedirs(export_directory_transformations)
        logger.info(f"The specified directory has been created: {export_directory_transformations}")
    
    
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
    if all(map(lambda x: 0<=len(x)<=1, compatibility_graph.values())):
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
    if not partitions:
        logger.warning('No partition have been found')
        logger.debug(f'Parameter:\nnum_partitions: {num_partitions}\nmin_sub_length: {min_sub_length}\nmax_sub_length:{max_sub_length}\nnumber_not_trivial_class:{number_not_trivial_class}')
        return
    
    for partition in partitions:
        logger.debug(list(map(lambda x: list(map(str, x)), partition)))
        
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
            problem_file = to_json(g_gamma.image_problem_to_dict(), export_directory_problems, filename)
            tranformation_file = to_json(g_gamma.transformation_to_dict(), export_directory_transformations, filename)
            
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
            problems_file = os.path.join(export_directory_problems, filename)
            json_compression(p_batch, problems_file)
            
            # Export transformation
            filename = f"{'%06d' % j}-{prefix}-NPP-{base_filename}.pkl"
            transformations_file = os.path.join(export_directory_transformations, filename)
            json_compression(t_batch, transformations_file)
            
            logger.info(f'NPP batch PKL file created : {problems_file}')
            logger.info(f'Transformation batch PKL file created : {transformations_file}')
            
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
def distribute_tuples(
                    tuples_list:list,
                    min_element:int=50,
                    max_element:int=110
                    ) -> list:
    # list of tuple of the form (str, integer) 1<=integer<=100
    tuples_list.sort(key=lambda x: x[1], reverse=True)
    groups = []
    current_group = []
    current_sum = 0

    # Stage 1: Distribute tuples to groups with sum between min_element and max_element
    for t in tuples_list:
        if current_sum + t[1] <= max_element and current_sum + t[1] >= min_element:
            current_group.append(t)
            current_sum += t[1]
        elif current_sum >= min_element:
            groups.append(current_group)
            current_group = [t]
            current_sum = t[1]
        else:
            current_group = [t]
            current_sum = t[1]

    if current_group:
        groups.append(current_group)

    # Stage 2: Distribute remaining tuples to the smallest group
    remaining_tuples = [t for t in tuples_list if t not in chain.from_iterable(groups)]
    while remaining_tuples:
        smallest_group = min(groups, key=lambda x: sum(y[1] for y in x))
        if sum(y[1] for y in smallest_group) + remaining_tuples[0][1] <= max_element:
            smallest_group.append(remaining_tuples.pop(0))
        else:
            new_group = [remaining_tuples.pop(0)]
            groups.append(new_group)

    return groups
    
def merging_batch(
                    input_file_list,
                    output_directory:str,
                    output_name:str,
                    erease:bool=True
                ):
                
    combined_data = {}
    for file in input_file_list:
    
        with open(file, 'rb') as f:
            data = pickle.load(f)
            combined_data.update(data)
            
        if erease:
            os.remove(file)
            logger.info(f"File has been deleted : {file}")
                      
    output_file = os.path.join(output_directory, output_name)
    with open(output_file, 'wb') as f:
        # save the combined data to a new PKL file
        pickle.dump(combined_data, f)
        logger.info(f"File has been created : {output_file}")
    
def uniform_batch_merging(
                            input_directory_graphs:str,
                            input_directory_transformations:str,
                            min_element:int=50,
                            max_element:int=110,
                            erease=True
                        ):

    # To have uniform batches
    list_tuple = []
    for filename in os.listdir(input_directory_graphs):
        if filename.endswith('.pkl'):
            # batch number, cardinality, parameters...
            #000001-000001-2-0-0-1-NPP-j40-07.pkl
            
            base_filename, _ = os.path.splitext(filename)
            batch_number,number_of_problem, *_ = base_filename.split('-')
            list_tuple.append(
                                (filename, int(number_of_problem))
                            )
            
    uniform_batchs = distribute_tuples(list_tuple)
    
    for i, batch in enumerate(uniform_batchs, start=1):
            
        number = "%06d" % i
        output_name = f'{number}-super_batch.pkl'
        
        # graphs
        output_directory = input_directory_graphs
        input_file_list = map(lambda x: os.path.join(input_directory_graphs, x[0]), batch)
        merging_batch(
                        input_file_list,
                        output_directory,
                        output_name,
                        erease
                    )
        logger.info(f"Graphs batches have been uniformized : {input_directory_graphs}")
        
        # transformations
        output_directory = input_directory_transformations
        input_file_list = map(lambda x: os.path.join(input_directory_transformations, x[0]), batch)
        merging_batch(
                input_file_list,
                output_directory,
                output_name,
                erease
            )
        logger.info(f"Transformations batches have been uniformized : {input_directory_transformations}")
        
            

    
# number in the filename
#batch_number, batch_size, min_sub_len, max_sub_len, number_not_trivial_class, H4
