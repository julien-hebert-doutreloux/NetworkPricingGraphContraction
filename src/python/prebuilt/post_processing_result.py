from preamble.preamble import *
from gamma.common import npp_from_json
from test.result_processing import post_process_result
PARAMETERS = config.prebuilt_prepare_sh_task(__name__)
logger = config.log(**PARAMETERS['logger'])


def parameter_kwargs(n, min_sl, max_sl, m, H1, H2, H3, H4, max_attemp):
    return {
    'n':n, 'min_sl':min_sl, 'max_sl':max_sl, 'm':m,
    'H1':H1, 'H2':H2, 'H3':H3, 'H4':H4,
    'max_attemp':max_attemp
    }
    
def main():
    directory_npp = './data/generated/problems/paper/v50-10'
    directory_original = './data/generated/problems/paper/original'
    directory_output = './tmp/'
    problem_name = directory_npp.split(os.sep)[-1]
    print(f"Problem name : {problem_name}")
    
    ptr = {}
    for root, dirs, files in os.walk(directory_npp):
        for filename in files:
            if filename.endswith("-R.json"):
                
                base_name, ext = os.path.splitext(filename)
                
                ext = '.pkl'
                file_results = os.path.join(directory_npp, filename)
                file_problems = os.path.join(directory_npp, filename.replace(f'R.json', f'P{ext}'))
                file_transformations = os.path.join(directory_npp, filename.replace(f'R.json', f'T{ext}'))
                ptr[base_name[:6:]] = (file_problems, file_transformations, file_results)
                
                

    #print(*ptr.items(), sep='\n')
    
    
    
    result_dict = {}
    # Original problem
    #(p, t, r) = #ptr.pop('%06d' % 0)
    
    p = os.path.join(directory_original, f'000000-000000-{problem_name}-P.json'
    t = os.path.join(directory_original, f'000000-000000-{problem_name}-T.json'
    r = os.path.join(directory_original, f'000000-000000-{problem_name}-R.json'
    
    o_nodes, o_edges, o_problems = npp_from_json(p)

    #with open(t, 'r') as f:
    #    o_transformation = json.load(f)
        
    #with open(r, 'r') as f:
    #    o_result = json.load(f)
        
    
    #id_ = f"{'%06d' % 0}-{'%06d' % 0}-0-0-0-0-0-0-0-0-0-{problem_name}"
    #result_dict[id_] = post_process_result(
    #                    o_nodes, o_edges, o_problems,
    #                    o_transformation, o_result,
    #                    **parameter_kwargs(0,0,0,0,0,0,0,0,0)
    #                    )
                        
    for batch_id, (p, t, r) in ptr.items():
        
        with open(t, 'rb') as f:
            transformations = pickle.load(f)
        
        with open(r, 'r') as f:
            results = json.load(f)
            results = {r.pop('id'): r for r in results}
        
        for id_ in tqdm(results.keys(), desc=f'Processing batch : {batch_id}'):
            # id_ ex. 000840-50-2-5-0-1-1-1-0-1500-d30-07
            
            _, *params, _ = id_.replace(problem_name, '').split('-')
            result_dict[id_] = post_process_result(
                        o_nodes, o_edges, o_problems,
                        transformations[id_], results[id_],
                        **parameter_kwargs(*params)
                        )
                        
    with open(os.path.join(directory_output, f'result_{problem_name}.pkl'), 'wb') as f:
        pickle.dump(result_dict, f)
                        
    
