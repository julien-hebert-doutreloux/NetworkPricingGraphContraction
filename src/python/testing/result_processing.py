from preamble.preamble import *
from gamma.common import npp_from_json, npp_from_dict
from gamma.gamma import Function, Algebra, Gamma, GammaNPP
#from testing.shortest_path_rewind import shortest_path_rewind 

PARAMETERS = config.test_result_processing(__name__)
logger = config.log(**PARAMETERS['logger'])


def post_process_result(
                        nodes,
                        edges,
                        problems,
                        transformation:dict,
                        result:dict,
                        **parameter_kwargs
                    ):
    
    g_gamma = GammaNPP.from_transformation(nodes, edges, transformation, problems=problems)
    
    tvals = result['tvals']
    flow_ = result['flow']
    #flow = {k: flow_[str(k)] for k in sorted(map(int, flow_))}
    
    
    if 'x' == parameter_kwargs['heuristic']:
        # number of vertex in the transformed graph
        nv = max(list(transformation['V'].values()))
        # number of edge in the transformed graph
        na = max(list(transformation['A'].values()))
        
    else:
        # number of vertex in the transformed graph
        nv = len(transformation['V'])
        # number of edge in the transformed graph
        na = len(transformation['A'])
    
    total_flow = np.zeros(na)
    
    #for user, f in flow_.items():
    #    ff = np.zeros(na)
    #    for i in f:
    #        ff[i-1] = 1
    #    total_flow+=ff
    for f in flow_.values():
        if not 0 in f: # Bui code failed to find a path or this is just a bug
            f = np.array(f)-1
            f = f.astype(int)

            total_flow += np.bincount(f, minlength=na)
        else:
            print(f)
    #if set(flow) != set(range(1, len(g_gamma)+1)):
    #    logger.warning('Flow result incomplete. NaN completion')
    #        
    #    diff = set(range(1, len(g_gamma)+1)) - set(flow)
    #    
    #    for i in sorted(diff):
    #        flow[i] = np.nan
        
    # function graph bridge
    #T_A       ⊆     A  ---gamma---> A_      ⊇       T_A_      
    #|                |              |                 |
    #phi_T_A          phi_A         phi_A_            phi_T_A_
    #|                |              |                 |
    #V                V              V                 V
    #I_T_A --alpha--> I_A --conv_1--> I_A_  <---beta--- I_T_A_
    #||                                                    A
    #||                                                   ||
    #-----------------------conv_2------------------------
    
    # (i) based on the index from I_T_AV
    edge_av = lambda i : g_gamma.alpha(i) 
    #opt_val_av = lambda i : tvals_0[i-1] # index correction and value correction 
    #opt_flow_av = lambda i : flow_0[i] 
    
    edge_ap = lambda i : g_gamma.phi_A_(g_gamma(g_gamma.phi_T_A_inv(i)))
    opt_val_ap = lambda i : tvals[g_gamma.conv2(i)-1]  # index correction and value correction 
    opt_flow_ap = lambda i : total_flow[g_gamma.conv1(g_gamma.alpha(i))]
    
    reduce_row_fun = (edge_av, edge_ap, opt_val_ap, opt_flow_ap)
    reduce_row = lambda i: [fun(i) for fun in reduce_row_fun]
    data = [reduce_row(i) for i in g_gamma.phi_T_A.image]
    
    # tolled edges
    headers = ('edge', '(edge)', '(opt. value)', '(opt. flow)')
    #logger.debug('\n'+tabulate(data, headers=headers))
    
    
    # other result
    compression_factors = {}
    compression_factors['cf1'] = len(g_gamma.phi_A.domain)/len(g_gamma.phi_A_)
    compression_factors['cf2'] = len(g_gamma.phi_V.domain)/len(g_gamma.phi_V_)
    compression_factors['cf3'] = compression_factors['cf1']*compression_factors['cf2']
    compression_factors['cf4'] = len(g_gamma.domain)/len(g_gamma.image)
    for i in range(5, 10):
        compression_factors[f'cf{i}'] = 2**compression_factors[f'cf{i-4}']
    
    #rewind_optimal_2, rewind_time_2 = shortest_path_rewind(g_gamma, result, option=2)
    #rewind_optimal_1, rewind_time_1 = shortest_path_rewind(g_gamma, result, option=1)
    finish = result['finish']
    return {
                'edge':data,
                'obj_value':result['obj_value'],
                'preprocess_time':result['preprocess_time'],
                'solve_time':result['solve_time'],
                'n_vertex':len(g_gamma.V_),
                'n_edge':len(g_gamma.A_),
                'n_tolled':len(g_gamma.I_T_A_),
                #'compression_factors':compression_factors,
                #'rewind_optimal_1':rewind_optimal_1,
                #'rewind_time_1':rewind_time_1,
                #'rewind_optimal_2':rewind_optimal_2,
                #'rewind_time_2':rewind_time_2,
                'finish':finish,
                **parameter_kwargs,
                **compression_factors
                #'n_simple_path_for_od':0,
                }
    
    
def parameter_kwargs(n, min_sl, max_sl, m, H1, H2, H3, H4, max_attemp, option, heuristic):
    # n
    # min_sl
    # max_sl
    # m
    # H1
    # H2
    # H3
    # H4
    # max_attemp
    # option
    # heuristic : the way of going back to original space
    
    return {
    'n':n, 'min_sl':min_sl, 'max_sl':max_sl, 'm':m,
    'H1':H1, 'H2':H2, 'H3':H3, 'H4':H4,
    'max_attemp':max_attemp,
    'option':option,
    'heuristic':heuristic
    }
    


def post_process_original(directory_input, directory_output, output_name=''):
    # Post-process original problem data
    
    directory_npp = directory_input
    if output_name == '':
        output_name = 'original'
        
    ptr = {}
    # Iterate through files in the directory_npp and process *R.json files
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
        #         n, min_sl, max_sl, m, H1, H2, H3, H4, max_attemp, option, heuristic
        params = [0,      0,      0, 0,  0,  0,  0,  0,          0,      0,         0]
        o_nodes, o_edges, o_problems = npp_from_json(p)
        result_dict[id_[14::].replace('-P', '')] = post_process_result(
                    o_nodes, o_edges, o_problems,
                    transformations, results,
                    **parameter_kwargs(*params)
                    )

    export_path = os.path.join(directory_output, f'{output_name}.pkl')
    
    with open(export_path, 'wb') as f:
        # Writing file
        pickle.dump(result_dict, f)
        logger.info(f'File created : {export_path}')
    
                
def post_process(directory_input, directory_output, directory_original, output_name=''):
    
    directory_npp = directory_input
    problem_name = directory_npp.split(os.sep)[-1] # attention if directory_input ends with .../ it will not work 
    if output_name == '':
        output_name = problem_name
        
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
            # id_ ex. batch_id1-batch_id2-000840-50-2-5-0-1-1-1-0-1500-d30-07
            transformation_id = id_.split(problem_name)[0]+problem_name
            
            
            _, *params = id_.replace(problem_name, '').split('-')
            unique_id = batch_id+'-'+id_         
            params.pop(-3) # pop the redundant empty string '' from params (resulting from the replace below)
            
            result_dict[unique_id] = post_process_result(
                        o_nodes, o_edges, o_problems,
                        transformations[transformation_id], results[id_],
                        **parameter_kwargs(*params)
                        )
    
    output_path = os.path.join(directory_output, f'{output_name}.pkl')
    with open(output_path, 'wb') as f:
        pickle.dump(result_dict, f)
        logger.info(f'File created : {output_path}')
