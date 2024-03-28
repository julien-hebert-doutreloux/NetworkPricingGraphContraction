from preamble.preamble import *
from gamma.common import from_json
from gamma.gamma import Function, Algebra, Gamma, GammaNPP


#process_result_before_vs_after
def process_result_before_vs_after(
    before_graph_file:str,
    after_graph_result_file:str,
    transformation_file:str,
    export_folder:str,
    output_filename:str,
    verbose=False
    ):
    """
    Process the results of a graph transformation before and after the transformation.
    Args:
        before_graph_file (str)      : The file path of the graph before the transformation.
        after_graph_result_file (str): The file path of the graph after the transformation.
        transformation_file (str)    : The file path of the transformation file.
        export_folder (str)          : The folder path to export the results. Defaults to ''.
        filename (str)               : The filename to use for the exported results. Defaults to ''.
        verbose (bool, optional)     : Whether to print verbose output. Defaults to False.
    """
    # Verify the extension
    if not output_filename.endswith('.pkl'):
        output_filename = output_filename + '.pkl'
        
    output_file = os.path.join(export_folder, output_filename)
    
    # Check if the file does not exists
    if not os.path.isfile(before_graph_file):
        print(f"Error: The specified file does not exists: {before_graph_file}")
        return False
    if not os.path.isfile(after_graph_result_file):
        print(f"Error: The specified file does not exists: {after_graph_result_file}")
        return False
    if not os.path.isfile(transformation_file):
        print(f"Error: The specified file does not exists: {transformation_file}")
        return False
    # Check if the file already exists
    if os.path.isfile(output_file):
        print(f"Error: The specified file already exists: {output_file}")
        return False
    # Check if the directory exists
    if not os.path.isdir(export_folder):
        print(f"Error: The specified directory does not exist: {export_folder}")
        return False
    
    # import original graph
    nodes, edges, _ = from_json(before_graph_file)
    # recreate the graph transformation from pickle transformation_file
    g_gamma = Gamma.from_transformation_pickle(nodes, edges, transformation_file)
    # import result from the after_graph_result_file
    with open(after_graph_result_file, 'rb') as f:
        result = json.load(f)
        
    tvals = result['tvals']
    flow_ = result['flow']
    flow = {k: flow_[str(k)] for k in sorted(map(int, flow_))}
    
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
    opt_val_av = lambda i : tvals_0[i-1] # correction index
    opt_flow_av = lambda i : flow_0[i] 
    
    edge_ap = lambda i : g_gamma.phi_A_(g_gamma(g_gamma.phi_T_A_inv(i)))
    opt_val_ap = lambda i : tvals[g_gamma.conv2(i)-1] # correction index
    opt_flow_ap = lambda i : flow[g_gamma.conv2(i)]
    
    # comparaison
    comp1 = lambda i: sym(opt_val_av(i), opt_val_ap(i))
    comp2 = lambda i: sym(opt_flow_av(i), opt_flow_ap(i))
    
    # % relative error tval and flow
    rel_error_t = lambda i : round(((opt_val_ap(i) - opt_val_av(i))/opt_val_av(i)), 3)*100 if opt_val_av(i)>0 else np.nan
    rel_error_f = lambda i : round(((opt_flow_ap(i) - opt_flow_av(i))/opt_flow_av(i)), 3)*100 if opt_flow_av(i)>0 else np.nan
        
    reduce_row_fun = (edge_av, edge_ap, opt_val_ap, opt_flow_ap)
    reduce_row = lambda i: [fun(i) for fun in reduce_row_fun]
    data = [reduce_row(i) for i in g_gamma.phi_T_A.image]
    
    if verbose:
        headers = ('edge', 'γ(edge)', 'opt. value', 'opt. flow')
        print(tabulate(data, headers=headers))
        
    to_export = {
                'edge':data,
                'obj_value':result['obj_value'],
                'preprocess_time':result['preprocess_time'],
                'solve_time':result['solve_time'],
                }
    
    # Write the list of sets to the file
    with open(output_file, 'wb') as f:
        pickle.dump(to_export, f)  # Fixed variable name here
    
    return output_file


def stack_result_into_dataframe(
                                process_result_file_before:str,
                                process_result_file_after:str,
                                edge_dataframe_file=None,
                                meta_dataframe_file=None,
                                verbose=False
                            ):
    """
    Compare the results of two process result files and return two pandas dataframes containing the comparison.
    Args:
        process_result_file_before (str): The path to the first process result file to compare.
        process_result_file_after (str): The path to the second process result file to compare.
        edge_dataframe_file (str): The path to the pkl dataframe about edge (create one if it does not exists)
        meta_dataframe_file (str): The path to the pkl dataframe about meta data (create one if it does not exists)
        verbose (bool): If True, print the comparison tables to the console. Defaults to False.
    """
    # Check if the file does not exists
    if not os.path.isfile(process_result_file_before):
        print(f"Error: The specified file does not exists: {process_result_file_before}")
        return False
        
    if not os.path.isfile(process_result_file_after):
        print(f"Error: The specified file does not exists: {process_result_file_after}")
        return False
    
    if not edge_dataframe_file:
        # create one at the specified file path
        #base_name = os.path.basename(process_result_file_before)
        #file_name, _ = os.path.splitext(base_name)
        #file_name = file_name.split('-')[1:-1:].join('-') + '-edge.pkl'
        #path = os.path.dirname(process_result_file_before)
        #edge_dataframe_file = os.path.join(path, filename) 
        print('The edge_dataframe_file is not specified')
        print(f"following file is created : {edge_dataframe_file}")
        
    elif not os.path.isfile(edge_dataframe_file):
        print(f"Error: The specified file does not exists: {edge_dataframe_file}")
        return False
        
    if not meta_dataframe_file:
        # create one at the specified file path
        #base_name = os.path.basename(process_result_file_before)
        #file_name, _ = os.path.splitext(base_name)
        #file_name = file_name.split('-')[1:-1:].join('-') + '-meta.pkl'
        #path = os.path.dirname(process_result_file_before)
        #meta_dataframe_file = os.path.join(path, filename) 
        print('The meta_dataframe_file is not specified')
        print(f"following file is created : {meta_dataframe_file}")
        
    elif not os.path.isfile(meta_dataframe_file):
        print(f"Error: The specified file does not exists: {meta_dataframe_file}")
        return False
    
    
    with open(process_result_file_before, 'rb') as f:
        result_before = pickle.load(f)
    
    edge_before = result_before['edge']
    obj_value_before = result_before['obj_value']
    solve_time_before = result_before['solve_time'] 
    preprocess_time_before= result_before['preprocess_time']
    
    with open(process_result_file_after, 'rb') as f:
        result_after = pickle.load(f)
        
    edge_after = result_after['edge']
    obj_value_after = result_after['obj_value']
    solve_time_after = result_after['solve_time'] 
    preprocess_time_after = result_after['preprocess_time']
    
    combine = lambda i: list(edge_before[i][0:1:])+list(edge_before[i][2::])+list(edge_after[i][::])
    headers = ('edge', 'opt. value', 'opt. flow','edge', 'γ(edge)', 'opt. value', 'opt. flow')
    data = [combine(i) for i in range(len(edge_after))]
    
    if verbose:
        print(tabulate(data, headers=headers))
    
    
    # edge result
    df1 = pd.DataFrame(data, columns=headers)


    # Filename
    base_name = os.path.basename(process_result_file_before)
    filename_before, _ = os.path.splitext(base_name)
    
    base_name = os.path.basename(process_result_file_after)
    filename_after, _ = os.path.splitext(base_name)
    
    
    headers = ('file', 'objective', 'solve time', 'preprocess time')
    data = [
        (filename_before, obj_value_before,solve_time_before, preprocess_time_before),
        (filename_after, obj_value_after, solve_time_after, preprocess_time_after),
    ]
    
    if verbose:
        print(tabulate(data, headers=headers))

    # meta data and objective
    df2 = pd.DataFrame(data, columns=headers)
    
    return df1, df2
    



    
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


