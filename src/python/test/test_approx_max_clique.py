from preamble.preamble import *
from unit_test.tools import timing_decorator
from gamma.rules import Rules, readable_rules, make_rules
from gamma.partition import compatible
from gamma.common import from_json

@timing_decorator   
def main(input_file, option, iteration, export_path):
    lock = threading.Lock()
    lock.acquire()
    if export_path:
        # Export path
        filename = os.path.basename(input_file)
        path1 = os.path.join(export_path, f"test_approx_max_clique_{filename}_my_max_clique_approx_{option}.txt")
        path2 = os.path.join(export_path, f"test_approx_max_clique_{filename}_nx_max_clique_approx.txt")
    
    # Import problem
    nodes, edges, problems = from_json(input_file)
    
    # Preparation
    rules = readable_rules(make_rules(edges))
    test_rules = Rules({k:v for k, v in rules.items() if len(v)>1}, option)

    G = nx.Graph()
    for node in test_rules:
         G.add_node(node)
         neighbors = test_rules[node]
         for neighbor in neighbors:
             G.add_edge(node, neighbor)
        
    
    def algo1(write_result=False, verbose=False):
        st = time.time()
        result = test_rules.approx_max_clique(return_all=False)
        ft = time.time()-st
        
        if verbose:
            print(f"\
                [approx_max_clique]\n\
                \tTime : {round(ft, 6)} sec\n\
                \tLenght : {len(result)}\n\
                \tCompatible : {compatible(result, test_rules)}\n\
                \tResult : {result}\
            ")
            
        if write_result:
            if not os.path.exists(path1):
                to_write = f'lenght\ttime\titeration\n{len(result)}\t{ft}\t{iteration}\n'
            else:
                to_write = f'{len(result)}\t{ft}\t{iteration}\n'
                
            with open(path1, 'a') as file:
                file.write(to_write)
            
        return ft, result
    
    def algo2(write_result=False, verbose=False):
        st = time.time()
        result = nx.approximation.max_clique(G)
        ft = time.time()-st
        
        if verbose:
            print(f"\
                [approx_max_clique]\n\
                \tTime : {round(ft, 6)} sec\n\
                \tLenght : {len(result)}\n\
                \tCompatible : {compatible(result, test_rules)}\n\
                \tResult : {result}\
            ")
            
        if write_result:
            if not os.path.exists(path2):
                to_write = f'lenght\ttime\titeration\n{len(result)}\t{ft}\t{iteration}\n'
            else:
                to_write = f'{len(result)}\t{ft}\t{iteration}\n'
                
            with open(path2, 'a') as file:
                file.write(to_write)
            
        return ft, result
    
    if export_path:
        verbose = False
        write_result = True
        
    else:
        verbose = True
        write_result = False
        
    algo1(write_result, verbose)
    algo2(write_result, verbose)
        
    lock.release()

