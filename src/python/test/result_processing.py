from preamble.preamble import *
from gamma.common import npp_from_json
from gamma.gamma import Function, Algebra, Gamma, GammaNPP
from test.shortest_path_rewind import shortest_path_rewind 

PARAMETERS = config.test_result_processing(__name__)
logger = config.log(**PARAMETERS['logger'])


def result_post_process(
            original_graph_file:str,
            transformations_file:str,
            results_file:str,
            export_folder:str='',
            output_filename:str='',
            ):
            
    """
    Process the results of a graph transformation before and after the transformation.
    Args:
        original_graph_file (str)    : The file path of the graph before the transformation.
        transformation_file (str)    : The file path of the transformation file.
        results_file (str)           : The file path of the graph after the transformation.
        export_folder (str)          : The folder path to export the results. Defaults to ''.
        filename (str)               : The filename to use for the exported results. Defaults to ''.
    """   
    def processing(
                    g_gamma:GammaNPP,
                    result:dict
                    ) -> dict:
    
        tvals = result['tvals']
        flow_ = result['flow']
        flow = {k: flow_[str(k)] for k in sorted(map(int, flow_))}
        
        if set(flow) != set(range(1, len(g_gamma)+1)):
            logger.debug('Flow result incomplete. NaN completion')
                
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
        opt_val_av = lambda i : max(1, tvals_0[i-1]) # index correction and value correction 
        opt_flow_av = lambda i : flow_0[i] 
        
        edge_ap = lambda i : g_gamma.phi_A_(g_gamma(g_gamma.phi_T_A_inv(i)))
        opt_val_ap = lambda i : max(1, tvals[g_gamma.conv2(i)-1])  # index correction and value correction 
        opt_flow_ap = lambda i : flow[g_gamma.conv1(g_gamma.alpha(i))]
        
        reduce_row_fun = (edge_av, edge_ap, opt_val_ap, opt_flow_ap)
        reduce_row = lambda i: [fun(i) for fun in reduce_row_fun]
        data = [reduce_row(i) for i in g_gamma.phi_T_A.image]
        
        # tolled edges
        headers = ('edge', 'γ(edge)', 'opt. value', 'opt. flow')
        logger.debug('\n'+tabulate(data, headers=headers))
        
        
        # other result
        rewind_optimal, rewind_time = shortest_path_rewind(
                                                            g_gamma,
                                                            result
                                                            )
        compression_factors = {}
        compression_factors[1] = len(g_gamma.phi_A.domain)/len(g_gamma.phi_A_)
        compression_factors[2] = len(g_gamma.phi_V.domain)/len(g_gamma.phi_V_)
        compression_factors[3] = compression_factors[1]*compression_factors[2]
        compression_factors[4] = len(g_gamma.domain)/len(g_gamma.image)
        
        for i in range(5, 10):
            compression_factors[i] = 2**compression_factors[i-4]
        
        return {
                    'edge':data,
                    'obj_value':result['obj_value'],
                    'preprocess_time':result['preprocess_time'],
                    'solve_time':result['solve_time'],
                    'n_vertex':len(g_gamma.A_),
                    'n_edge':len(g_gamma.V_),
                    'compression_factors':compression_factors,
                    'rewind_optimal':rewind_optimal,
                    'rewind_time':rewind_time,
                    #'n_simple_path_for_od':0,
                    }
                    
        
        
    output_file = os.path.join(export_folder, output_filename)
            
    # Check if the file does not exists
    if not os.path.isfile(original_graph_file):
        logger.warning(f"The specified file does not exists: {original_graph_file}")
        return
        
    # Check if the file does not exists
    if not os.path.isfile(transformations_file):
        logger.warning(f"The specified file does not exists: {transformations_file}")
        return
        
    # Check if the file does not exists
    if not os.path.isfile(results_file):
        logger.warning(f"The specified file does not exists: {results_file}")
        return
    
    # Check if the directory exists
    if not os.path.isdir(export_folder):
        logger.warning(f"The specified directory does not exist: {export_folder}")
        return
        
    # Check if the file already exists
    if os.path.isfile(output_file):
        logger.info(f"The specified file already exists: {output_file}")
    
    # import original
    nodes, edges, problems = npp_from_json(original_graph_file)
    
    if transformations_file.endswith('.pkl'):
        # Case batch
        
        with open(results_file, 'r') as f:
            results = json.load(f)
            npp_list = list(map(lambda x: x[0], results))
            
        with open(transformations_file, 'r') as f:
            transformations = pickle.load(f)
            # only consider transformation with successful result from julia  
            transformations = list(filter(lambda x: x[0] in npp_list, transformations))
            
            
        for ((t_name, transformation) , (r_name, result)) in zip(transformations, results):
            to_export = []
            if t_name == r_name:
                g_gamma = GammaNPP.from_transformation(nodes, edges, transformation, problems=problems) 
                
                to_export.append({**processing(g_gamma, result), **{'id': r_name}})
    
    else:
        # individual case
        g_gamma = GammaNPP.from_transformation(nodes, edges, transformation, problems=problems) 
        to_export = {**processing(g_gamma, result), **{'id': r_name}}
    
    with open(output_file, 'wb') as f:
        pickle.dump(to_export, f)
    
    return output_file



def result_post_process_csv_batch(input_file:str):
    data = pd.read_csv(input_file)

    for index, row in data.iterrows():
        process_result_before_vs_after(
                                        row['original_graph_file'],
                                        row['transformations_file'],
                                        row['results_file'],
                                        row['export_folder'],
                                        row['output_filename'],
                                        )


def stack_result_into_dataframe(
                                input_process_result_file_before:str,
                                input_process_result_file_after:str,
                                export_edge_dataframe_file:str='',
                                export_meta_dataframe_file:str='',
                            ):
    """
    Compare the results of two process result files and return two pandas dataframes containing the comparison.
    Args:
        input_process_result_file_before (str): Single result in the file
        input_process_result_file_after (str): Single or multiple result in file
        export_edge_dataframe_file (str): The file path to the pkl dataframe about edge (create one if it does not exists)
        export_meta_dataframe_file (str): The file path to the pkl dataframe about meta data (create one if it does not exists)
    """
    # Check if the file does not exists
    if not os.path.isfile(input_process_result_file_before):
        logger.warning(f"The specified file does not exists: {process_result_file_before}")
        return False
        
    if not os.path.isfile(input_process_result_file_after):
        logger.warning(f"The specified file does not exists: {process_result_file_after}")
        return False
    
    # retrieve name of the original problem
    base_name = os.path.basename(input_process_result_file_before)
    filename_before, _ = os.path.splitext(base_name)
    # retrieve name of the transformed problem
    base_name = os.path.basename(input_process_result_file_after)
    filename_after, _ = os.path.splitext(base_name)
    
    
    # Before result
    with open(input_process_result_file_before, 'rb') as f:
        result_before = pickle.load(f)  
    edge_before = result_before['edge']
    obj_value_before = result_before['obj_value']
    solve_time_before = result_before['solve_time'] 
    preprocess_time_before= result_before['preprocess_time']
    
    
    # After result
    with open(input_process_result_file_after, 'rb') as f:
        result_after = pickle.load(f)
        
    if type(result_after) != list:
        # SINGLE CASE
        result_after = [result_after, ]
        
    data1 = []
    data2 = []
    for res in result_after:
        id_after = res['id']
        edge_after = res['edge']
        obj_value_after = res['obj_value']
        solve_time_after = res['solve_time'] 
        preprocess_time_after = res['preprocess_time']
        n_edge = res['n_edge']
        
        n_vertex = res['n_vertex']
        compression_factors = list(res['compression_factors'].values())
        rewind_optimal = res['rewind_optimal']
        rewind_time = res['rewind_time']

        # edge result
        combine = lambda i: [id_after,] + list(edge_before[i][0:1:])+list(edge_before[i][2::])+list(edge_after[i][::])
        data1 += [combine(i) for i in range(len(edge_after))]
        
        # meta data and objective
        data2 += [
                    (
                        id_after,
                        obj_value_after,
                        solve_time_after,
                        preprocess_time_after,
                        n_vertex,
                        n_edge,
                        rewind_optimal,
                        rewind_time,
                        *compression_factors
                    ), 
                ]
        
        
    headers = (
                'id',
                'edge',
                'opt. value',
                'opt. flow',
                'edge_ref',
                '(edge)',
                '(opt. value)',
                '(opt. flow)'
            )
    df1 = pd.DataFrame(data, columns=headers)
    logger.debug('\n'+tabulate(data, headers=headers))
    
    headers = (
                'id',
                'objective',
                'solve time',
                'preprocess time',
                'number vertex',
                'number edge',
                'rewind optimal',
                'rewind time',
                'c.-f.1',
                'c.-f.2',
                'c.-f.3',
                'c.-f.4',
                'c.-f.5',
                'c.-f.6',
                'c.-f.7',
                'c.-f.8',
                'c.-f.9'
            )
    df2 = pd.DataFrame(data, columns=headers)
    logger.debug('\n'+tabulate(data, headers=headers))
    
    
    if os.path.isfile(export_edge_dataframe_file):
        logger.warning(f"The specified file already exists: {export_edge_dataframe_file}")
        logger.warning(f"The following file will be overwritten : {export_edge_dataframe_file}")
    df1.to_pickle(export_edge_dataframe_file)
        
        
    if os.path.isfile(export_meta_dataframe_file):
        logger.warning(f"The specified file already exists: {export_meta_dataframe_file}")
        logger.warning(f"The following file will be overwritten : {export_meta_dataframe_file}")
    df2.to_pickle(export_meta_dataframe_file)
        
    return export_edge_dataframe_file, export_meta_dataframe_file
    

def stack_result_into_dataframe_batch(input_file:str):
    data = pd.read_csv(input_file)

    for index, row in data.iterrows():
        stack_result_into_dataframe(
                                        row['input_process_result_file_before'],
                                        row['input_process_result_file_after'],
                                        row['export_edge_dataframe_file'],
                                        row['export_meta_dataframe_file'],
                                        )
