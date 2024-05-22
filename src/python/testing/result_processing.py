from preamble.preamble import *
from gamma.common import npp_from_json, npp_from_dict
from gamma.gamma import Function, Algebra, Gamma, GammaNPP
from testing.shortest_path_rewind import shortest_path_rewind 

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
    flow = {k: flow_[str(k)] for k in sorted(map(int, flow_))}
    
    if set(flow) != set(range(1, len(g_gamma)+1)):
        logger.warning('Flow result incomplete. NaN completion')
            
        diff = set(range(1, len(g_gamma)+1)) - set(flow)
        
        for i in sorted(diff):
            flow[i] = np.nan
        
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
    opt_val_av = lambda i : tvals_0[i-1] # index correction and value correction 
    opt_flow_av = lambda i : flow_0[i] 
    
    edge_ap = lambda i : g_gamma.phi_A_(g_gamma(g_gamma.phi_T_A_inv(i)))
    opt_val_ap = lambda i : tvals[g_gamma.conv2(i)-1]  # index correction and value correction 
    opt_flow_ap = lambda i : flow[g_gamma.conv1(g_gamma.alpha(i))]
    
    reduce_row_fun = (edge_av, edge_ap, opt_val_ap, opt_flow_ap)
    reduce_row = lambda i: [fun(i) for fun in reduce_row_fun]
    data = [reduce_row(i) for i in g_gamma.phi_T_A.image]
    
    # tolled edges
    headers = ('edge', '(edge)', '(opt. value)', '(opt. flow)')
    #logger.debug('\n'+tabulate(data, headers=headers))
    
    
    # other result
    compression_factors = {}
    compression_factors[1] = len(g_gamma.phi_A.domain)/len(g_gamma.phi_A_)
    compression_factors[2] = len(g_gamma.phi_V.domain)/len(g_gamma.phi_V_)
    compression_factors[3] = compression_factors[1]*compression_factors[2]
    compression_factors[4] = len(g_gamma.domain)/len(g_gamma.image)
    for i in range(5, 10):
        compression_factors[i] = 2**compression_factors[i-4]
    
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
                'compression_factors':compression_factors,
                #'rewind_optimal_1':rewind_optimal_1,
                #'rewind_time_1':rewind_time_1,
                #'rewind_optimal_2':rewind_optimal_2,
                #'rewind_time_2':rewind_time_2,
                'finish':finish,
                **parameter_kwargs
                #'n_simple_path_for_od':0,
                }
    
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

