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
    # Post-process original problem data
    directory_npp = './data/generated/problems/paper/original'
    directory_output = './tmp/'
    ptr = {}
    for root, dirs, files in os.walk(directory_npp):
        for filename in files:
            if filename.endswith("-R.json"):
                base_name, ext = os.path.splitext(filename)
                file_results = os.path.join(directory_npp, filename)
                file_problems = os.path.join(directory_npp, filename.replace(f'R.json', f'P.json'))
                file_transformations = os.path.join(directory_npp, filename.replace(f'R.json', f'T.json'))
                
                ptr[base_name] = (file_problems, file_transformations, file_results)
                
    result_dict = {}
    
    
    for problem_name, (p, t, r) in tqdm(ptr.items(), desc="Processing original"):
    
        with open(t, 'r') as f:
            transformations = json.load(f)
        
        with open(r, 'r') as f:
            results = json.load(f)
            id_ = results.pop('id')

        # id_ ex. 000840-50-2-5-0-1-1-1-0-1500-d30-07
        params = [0,0,0,0,0,0,0,0,0]
        o_nodes, o_edges, o_problems = npp_from_json(p)
        result_dict[id_[14::].replace('-P', '')] = post_process_result(
                    o_nodes, o_edges, o_problems,
                    transformations, results,
                    **parameter_kwargs(*params)
                    )
                        
    with open(os.path.join(directory_output, f'result_original.pkl'), 'wb') as f:
        pickle.dump(result_dict, f)
    
                
def batch_result(pb_list):
    pb_list_all = [
            'd30-01','d30-02','d30-03','d30-05','d30-06','d30-07','d30-08','d30-09',
            'd35-01','d35-03','d35-04','d35-07','d35-08','d35-09','d35-10',
            'd40-05','d40-06','d40-09',
            'd45-02','d45-06',
            'd50-06',
            'g30-01','g30-02','g30-03','g30-04','g30-05','g30-06','g30-07','g30-08','g30-09',
            'g35-01','g35-02','g35-03','g35-04','g35-05','g35-06','g35-07','g35-08','g35-09','g35-10',
            'g40-02','g40-03','g40-04','g40-05','g40-06','g40-07','g40-09','g40-10',
            'g45-01','g45-06','g45-07','g45-08','g45-10',
            'g50-01','g50-02','g50-03','g50-04','g50-08','g50-10',
            'h30-01','h30-03','h30-07','h30-09',
            'h35-04','h35-10',
            'v30-01','v30-05','v30-06','v30-07','v30-08',
            'v35-01','v35-02',
            'v40-01','v40-02',
            'v45-01','v50-01',
            ]
    for pb_name in pb_list:
        directory_npp = f'./data/generated/problems/paper/{pb_name}'
        problem_name = directory_npp.split(os.sep)[-1]
        print(f"Problem name : {problem_name}")
        directory_output = './tmp/'
        directory_original = './data/generated/problems/paper/original'
        ptr = {}
        for root, dirs, files in os.walk(directory_npp):
            for filename in files:
                if filename.endswith("-R.json"):
                    
                    base_name, ext = os.path.splitext(filename)
                    
                    ext = '.pkl'
                    file_results = os.path.join(directory_npp, filename)
                    file_problems = os.path.join(directory_npp, filename.replace(f'R.json', f'P{ext}'))
                    file_transformations = os.path.join(directory_npp, filename.replace(f'R.json', f'T{ext}'))
                    ptr[base_name[:13:]] = (file_problems, file_transformations, file_results)
                    
                    

        
        result_dict = {}
        
        p = os.path.join(directory_original, f'000000-000000-{problem_name}-P.json')
        t = os.path.join(directory_original, f'000000-000000-{problem_name}-T.json')
        r = os.path.join(directory_original, f'000000-000000-{problem_name}-R.json')
        
        o_nodes, o_edges, o_problems = npp_from_json(p)
                            
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
                        
    
