from preamble.preamble import *
from gamma.common import npp_from_json
from gamma.gamma import Function, Algebra, Gamma, GammaNPP
from test.shortest_path_rewind import shortest_path_rewind 

PARAMETERS = config.test_result_processing(__name__)
logger = config.log(**PARAMETERS['logger'])

#process_result_before_vs_after
def process_result_before_vs_after(
    before_graph_file:str,
    after_graph_result_file:str,
    transformation_file:str,
    export_folder:str='',
    output_filename:str='',
    ):
    """
    Process the results of a graph transformation before and after the transformation.
    Args:
        before_graph_file (str)      : The file path of the graph before the transformation.
        after_graph_result_file (str): The file path of the graph after the transformation.
        transformation_file (str)    : The file path of the transformation file.
        export_folder (str)          : The folder path to export the results. Defaults to ''.
        filename (str)               : The filename to use for the exported results. Defaults to ''.
    """
    
    
    to_be_exported = export_folder and output_filename
    if to_be_exported:
        # Verify the extension
        if not output_filename.endswith('.pkl'):
            output_filename = output_filename + '.pkl'
            
        output_file = os.path.join(export_folder, output_filename)
        
        # Check if the file does not exists
        if not os.path.isfile(before_graph_file):
            logger.warning(f"The specified file does not exists: {before_graph_file}")
            return False
        if not os.path.isfile(after_graph_result_file):
            logger.warning(f"The specified file does not exists: {after_graph_result_file}")
            return False
        if not os.path.isfile(transformation_file):
            logger.warning(f"The specified file does not exists: {transformation_file}")
            return False
        
        # Check if the file already exists
        if os.path.isfile(output_file):
            logger.info(f"The specified file already exists: {output_file}")
            
        # Check if the directory exists
        if not os.path.isdir(export_folder):
            logger.warning(f"The specified directory does not exist: {export_folder}")
            return False
    
    # import original graph
    nodes, edges, problems = npp_from_json(before_graph_file)
    # recreate the graph transformation from pickle transformation_file
    g_gamma = GammaNPP.from_transformation_pickle(nodes, edges, transformation_file, problems=problems, preprocess=False)
    
    
    # import result from the after_graph_result_file
    with open(after_graph_result_file, 'rb') as f:
        result = json.load(f)
        
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
    opt_val_av = lambda i : max(1,tvals_0[i-1]) # index correction and value correction 
    opt_flow_av = lambda i : flow_0[i] 
    
    edge_ap = lambda i : g_gamma.phi_A_(g_gamma(g_gamma.phi_T_A_inv(i)))
    opt_val_ap = lambda i : max(1,tvals[g_gamma.conv2(i)-1])  # index correction and value correction 
    opt_flow_ap = lambda i : flow[g_gamma.conv1(g_gamma.alpha(i))]
    
    # comparaison
    #comp1 = lambda i: sym(opt_val_av(i), opt_val_ap(i))
    #comp2 = lambda i: sym(opt_flow_av(i), opt_flow_ap(i))
    
    # % relative error tval and flow
    #rel_error_t = lambda i : round(((opt_val_ap(i) - opt_val_av(i))/opt_val_av(i)), 3)*100 if opt_val_av(i)>0 else np.nan
    #rel_error_f = lambda i : round(((opt_flow_ap(i) - opt_flow_av(i))/opt_flow_av(i)), 3)*100 if opt_flow_av(i)>0 else np.nan
        
    reduce_row_fun = (edge_av, edge_ap, opt_val_ap, opt_flow_ap)
    reduce_row = lambda i: [fun(i) for fun in reduce_row_fun]
    data = [reduce_row(i) for i in g_gamma.phi_T_A.image]
    
    # tolled edges
    headers = ('edge', 'γ(edge)', 'opt. value', 'opt. flow')
    logger.debug('\n'+tabulate(data, headers=headers))
    
    
    
    
    
    ## Other result
    
    ## Path count
    #G = g_gamma.to_networkx()
    #od_pair_in_problems = map(lambda x: (x['orig'], x['dest']), g_gamma.problems_image)

    # Compute the number of distinct paths for each pair
    #path_counts = {}
    #for origin, destination in od_pair_in_problems:
    #    print(origin, destination)
    #    paths = list(nx.all_simple_paths(G, origin, destination))
    #    num_distinct_paths = len(paths)
    #    print(num_distinct_paths)
    #    path_counts[(origin, destination)] = num_distinct_paths
    
    # other result
    rewind_optimal, rewind_time = shortest_path_rewind(
                                                    before_graph_file,
                                                    after_graph_result_file, 
                                                    transformation_file,
                                                    )
    compression_factors = {}
    compression_factors[1] = len(g_gamma.phi_A.domain)/len(g_gamma.phi_A_)
    compression_factors[2] = len(g_gamma.phi_V.domain)/len(g_gamma.phi_V_)
    compression_factors[3] = compression_factors[1]*compression_factors[2]
    compression_factors[4] = len(g_gamma.domain)/len(g_gamma.image)
    for i in range(5, 10):
        compression_factors[i] = 2**compression_factors[i-4]
    
    to_export = {
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
    if to_be_exported:
        # Write the list of sets to the file
        with open(output_file, 'wb') as f:
            pickle.dump(to_export, f)  # Fixed variable name here
        
        return output_file

def process_result_before_vs_after_batch(input_file:str):
    data = pd.read_csv(input_file)

    for index, row in data.iterrows():
        process_result_before_vs_after(
                                        row['before_graph_file'],
                                        row['transformation_file'],
                                        row['after_graph_result_file'],
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
        input_process_result_file_before (str): The file path to the first process result file to compare.
        input_process_result_file_after (str): The file path to the second process result file to compare.
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
        
    edge_after = result_after['edge']
    obj_value_after = result_after['obj_value']
    solve_time_after = result_after['solve_time'] 
    preprocess_time_after = result_after['preprocess_time']
    n_edge = result_after['n_edge']
    
    n_vertex = result_after['n_vertex']
    compression_factors = list(result_after['compression_factors'].values())
    rewind_optimal = result_after['rewind_optimal']
    rewind_time = result_after['rewind_time']

    # edge result
    combine = lambda i: [filename_after,] + list(edge_before[i][0:1:])+list(edge_before[i][2::])+list(edge_after[i][::])
    data = [combine(i) for i in range(len(edge_after))]
    headers = ('file', 'edge', 'opt. value', 'opt. flow','edge_ref', '(edge)', '(opt. value)', '(opt. flow)')
    df1 = pd.DataFrame(data, columns=headers)
    
    logger.debug('\n'+tabulate(data, headers=headers))
    
    
    if not os.path.isfile(export_edge_dataframe_file):
        logger.warning(f"The specified file does not exists: {export_edge_dataframe_file}")
        logger.warning(f"The following file is created : {export_edge_dataframe_file}")
        df1.to_pickle(export_edge_dataframe_file)
        
    else:
        df = pd.read_pickle(export_edge_dataframe_file)
        
        # verify if the result are already there
        if df['file'].isin([filename_after,]).any():
            logger.warning(f"Result already in edge_dataframe. Reference file: {filename_after}")
            logger.warning(f"Overwriting rows")
            df = df[df['file'] != filename_after]
            
        df = pd.concat([df, df1])
        df.to_pickle(export_edge_dataframe_file)
        
    # meta data and objective
    data = [
        #(filename_before, obj_value_before,solve_time_before, preprocess_time_before),
        (filename_after, obj_value_after, solve_time_after, preprocess_time_after, n_vertex, n_edge, rewind_optimal, rewind_time, *compression_factors),
    ]
    headers = ('file', 'objective', 'solve time', 'preprocess time', 'number vertex', 'number edge', 'rewind optimal', 'rewind time', 'c.-f.1', 'c.-f.2', 'c.-f.3', 'c.-f.4', 'c.-f.5', 'c.-f.6', 'c.-f.7', 'c.-f.8',  'c.-f.9',)
    df2 = pd.DataFrame(data, columns=headers)
    
    logger.debug('\n'+tabulate(data, headers=headers))
        
    if not os.path.isfile(export_meta_dataframe_file):
        logger.warning(f"The specified file does not exists: {export_meta_dataframe_file}")
        logger.warning(f"The following file is created : {export_meta_dataframe_file}")
        df2.to_pickle(export_meta_dataframe_file)
        
    else:
        df = pd.read_pickle(export_meta_dataframe_file)
        
        # verify if the result are already there
        if df['file'].isin([filename_after,]).any():
            logger.warning(f"Result already in meta_dataframe. Reference file: {filename_after}")
            logger.warning(f"Overwriting rows")
            df = df[df['file'] != filename_after]
            
        df = pd.concat([df, df2])
        df.to_pickle(export_meta_dataframe_file)
        
        
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

    
    
#if verbose:
#edge_av = lambda i : f"{g_gamma.phi_T_A_inv(i)}"
#edge_ap = lambda i : g_gamma(g_gamma.phi_T_A_inv(i))
#
#row_fun = (
#        edge_av, opt_val_av, opt_flow_av,\
#        edge_ap, opt_val_ap, opt_flow_ap,\
#        comp1, comp2, rel_error_t, rel_error_f
#        )
#row = lambda i: [fun(i) for fun in row_fun]
#data = [row(i) for i in g_gamma.phi_T_A.image]
#headers = [
#        'edge', 'opt. value', 'opt. flow',\
#        'γ(edge)', 'opt. value', 'opt. flow',\
#        'sym. value', 'sym. flow', '%rel. error value', '%rel. error flow'
#    ]
#print(tabulate(data, headers=headers))
# revised_before_with_after_result()
# before_graph_result_file
# transformation_file
# after_graph_result_file
# export_folder


