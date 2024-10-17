from preamble.preamble import *
from unit_test.tools import timing_decorator
from gamma.rules import Rules, readable_rules, make_rules
from gamma.partition import compatible
from gamma.common import npp_from_json

#@timing_decorator   
def main(input_file, iteration, export_path):
    #lock = threading.Lock()
    #lock.acquire()
    random.seed(42+int(iteration))

    if export_path:
        # Export path
        filename = os.path.basename(input_file)
        basedir = os.path.dirname(file_path)
        name = f"{basedir}_{os.path.splitext(filename)[0]}"
        path1 = os.path.join(export_path, f"{name}_my_max_clique_approx_best.txt")
        path2 = os.path.join(export_path, f"{name}_my_max_clique_approx_initial.txt")
        path3 = os.path.join(export_path, f"{name}_nx_max_clique_approx.txt")
    
    # Import problem
    nodes, edges, problems = npp_from_json(input_file)
    
    # Preparation
    rules = readable_rules(make_rules(edges, True, False, True, False))
    test_rules = Rules({k:v for k, v in rules.items() if len(v)>1}) 

    G = nx.Graph()
    for node in test_rules:
         G.add_node(node)
         neighbors = test_rules[node]
         for neighbor in neighbors:
             G.add_edge(node, neighbor)
        
    fun1 = lambda : test_rules.approx_max_clique_best(return_all=False, reverse=False)
    fun2 = lambda : test_rules.approx_max_clique_initial(return_all=False, reverse=False)
    fun3 = lambda : nx.approximation.max_clique(G)
    
    def algo(approx_function_wrapped, export_path=None, verbose=False):
        st = time.time()
        result = approx_function_wrapped()
        ft = time.time()-st
        
        if verbose:
            print(f"\
                [{approx_function_wrapped}]\n\
                \tTime : {round(ft, 6)} sec\n\
                \tLength : {len(result)}\n\
                \tCompatible : {compatible(result, test_rules)}\n\
                \tResult : {result}\
            ")
            
        if export_path:
            if not os.path.exists(export_path):
                to_write = f'length\ttime\titeration\n{len(result)}\t{ft}\t{iteration}\n'
            else:
                to_write = f'{len(result)}\t{ft}\t{iteration}\n'
                
            with open(export_path, 'a') as file:
                file.write(to_write)
            
        return ft, result
        
    verbose = False
    algo(fun1, path1, verbose)
    algo(fun2, path2, verbose)
    algo(fun3, path3, verbose)
        
    #lock.release()

