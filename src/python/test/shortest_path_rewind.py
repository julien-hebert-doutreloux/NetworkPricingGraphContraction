from preamble.preamble import *
from gamma.gamma import GammaNPP
from graph.graph import Edge, Node

PARAMETERS = config.test_shortest_path_rewind(__name__)
logger = config.log(**PARAMETERS['logger'])

def revised_problem_from_result(
                            g_gamma:GammaNPP,
                            result:dict,
                            option:int
                            ):
        
        edges = []
        nodes = g_gamma.V
        problems = g_gamma.problems_domain
        
        for e in sorted(g_gamma.A, key=lambda x:g_gamma.phi_A(x)):
            e = e.copy()
            if e.toll:
                general_index = g_gamma.phi_A(e)
                tolled_index = g_gamma.beta_inv(g_gamma.conv1(general_index))
                logger.debug(f"general_index = {general_index}")
                logger.debug(f"tolled_index = {tolled_index}")
                
                if option == 1:
                    logger.debug(f"e.cost : {e.cost}")
                    e.cost += result['tvals'][tolled_index-1] # index correction and value correction
                    logger.debug(f"result['tvals'][tolled_index-1] : {result['tvals'][tolled_index-1]}")
                    logger.debug(f"e.cost = {e.cost}")
                    
                elif option == 2:
                    preimage_cardinality = len(g_gamma.conv1.preimage(tolled_index))
                    logger.debug(f"e.cost : {e.cost}")
                    e.cost += result['tvals'][tolled_index-1] / preimage_cardinality
                    logger.debug(f"preimage_cardinality {preimage_cardinality}")
                    logger.debug(f"result['tvals'][tolled_index-1] : {result['tvals'][tolled_index-1]/ preimage_cardinality}")
                    logger.debug(f"e.cost = {e.cost}")
                    
                #input()
                logger.debug(f"e = {e}\n")
            edges.append(e)
            
        return GammaNPP(nodes, edges, problems=problems)

def shortest_path_rewind(
                        g_gamma:GammaNPP,
                        result:dict,
                        option:int
                        ):
    fix_cost = {
        g_gamma.phi_A(edge):int(edge.cost) for edge in sorted(g_gamma.A, key=lambda x: int(x.label))
    }
    #print(*fix_cost.items(), sep='\n')
    
    # recreate the original graph change the problem to reflect result from the transformation
    g_gamma_revised = revised_problem_from_result(g_gamma, result, option)
    nx_graph = g_gamma_revised.to_networkx(graph_image=False, formatted_edge=True)
    
    # Just for the logging
    sorted_edges = sorted(nx_graph.edges(keys=True, data=True), key=lambda x: int(x[2]))
    data = [(u, v, key, data['cost'], data['toll']) for u, v, key, data in sorted_edges]
    logger.debug('\n'+tabulate(data,headers=['orig', 'dest', 'nx_key', 'cost', 'toll']))
    
    od_pair_demand = []
    for p in g_gamma_revised.problems_domain:
        od_pair_demand.append((str(p['orig']), str(p['dest']), p['demand']))
    
    def leader_profit(*paths, verbose=False):
        best_profit = -1
        
        for path in paths:
            current_profit = 0
            
            for (u,v) in zip(path[:-1:], path[1::]):
                # parallel edge keys
                edge_key_list = [key for key in nx_graph.get_edge_data(u, v)]
                edge_values = lambda x: tuple(nx_graph[u][v][x].values())
                
                tolled_arc_cost = list(
                                        map(
                                            lambda y:(y, int(edge_values(y)[0])), filter(lambda x: edge_values(x)[1], edge_key_list)
                                        )
                                    )
                
                constant_arc_cost = list(map(lambda y:int(edge_values(y)[0]), filter(lambda x: not edge_values(x)[1], edge_key_list)))
                key_tolled, min_tolled = min(tolled_arc_cost, key=lambda x: x[1]) if tolled_arc_cost else (None, np.inf)
                min_constant = min(constant_arc_cost) if constant_arc_cost else np.inf
                
                #print(f"min_tolled {key_tolled} : {min_tolled}")
                #print(f"min_constant : {min_constant}")
                if min_tolled <= min_constant:
                    fix_cost_tolled = fix_cost[int(key_tolled)]
                    current_profit += (min_tolled - fix_cost_tolled)
                    #print((min_tolled - fix_cost_tolled))
                    #print(fix_cost_tolled)
                    #input()
                    
            if current_profit > best_profit:
                best_profit = current_profit
                
        return best_profit
            
    start_time = time.time()
    #https://codereview.stackexchange.com/questions/235898/speeding-up-dijkstras-algorithm
    total_profit = 0
    for o, d, n in od_pair_demand:
        s_paths = list(nx.all_shortest_paths(nx_graph, o,d, weight='cost'))
        total_profit += leader_profit(*s_paths)*n
    end_time = time.time()
    return total_profit, end_time-start_time
