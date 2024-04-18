from preamble.preamble import *
from unit_test.tools import timing_decorator, unit_test_decorator
from test.result_processing import post_process_result
from gamma.common import npp_from_json
def bell_number(n):
    if n == 0:
        return 1
    
    bell = [[0] * (n + 1) for _ in range(n + 1)]
    bell[0][0] = 1
    
    for i in range(1, n + 1):
        bell[i][0] = bell[i - 1][i - 1]
        
        for j in range(1, i + 1):
            bell[i][j] = bell[i - 1][j - 1] + bell[i][j - 1]
    
    return bell[n][0]
    

@timing_decorator
def main():

    original_npp_file = './data/generated/graphs/progressive-2/o45-04/000000-NPP-o45-04.json'
    original_npp_transformation = './data/generated/transformations/progressive-2/o45-04/000000-NPP-o45-04.json'
    original_npp_result = './data/generated/results/progressive-2/o45-04/000000-NPP-o45-04.json'
    results_directory = './data/generated/results/progressive-2/o45-04/'
    transformations_directory = './data/generated/transformations/progressive-2/o45-04/'
    
    nodes, edges, problems = npp_from_json(original_npp_file)
    process_data = {}
    keys = ['sub_id', 'min_sub_length', 'max_sub_length', 'number_not_trivial_class', 'H4', 'npp_id']
    
    # import original probleme result
    with open(original_npp_result, 'r') as f:
        results_data = json.load(f)
        
    with open(original_npp_transformation, 'r') as f:
        # trivial only for testing shortest path
        transformations_data = json.load(f)
    
    id_ = results_data['id']
    result = results_data
    transformation = transformations_data
    sub_id, *npp_id = id_.split('-')
    values = [sub_id, 0,0,0,0,'-'.join(npp_id)]
    paramaters = dict(zip(keys, values))
    process_data[id_] = post_process_result(nodes, edges, problems, transformation, result, **paramaters)
    
    for filename in os.listdir(results_directory):
    
        if filename.endswith('.json') and not filename.startswith('%06d' % 0):
            results_file = os.path.join(results_directory, filename)
            transformations_file = os.path.join(transformations_directory, filename.replace('.json', '.pkl'))
            
            with open(results_file, 'r') as f:
                results_data = json.load(f)
                
            with open(transformations_file, 'rb') as f:
                transformations_data = pickle.load(f)
            
            for result in tqdm(results_data, desc=f'Process {filename}'): 
                id_ = result['id']
                transformation = transformations_data[id_]
                
                sub_id, min_sub_length, max_sub_length, number_not_trivial_class, H4, *npp_id = id_.split('-')
                values = [sub_id, min_sub_length, max_sub_length, number_not_trivial_class, H4, '-'.join(npp_id)]
                paramaters = dict(zip(keys, values))
                process_data[id_] = post_process_result(nodes, edges, problems, transformation, result, **paramaters)
    
    return process_data

