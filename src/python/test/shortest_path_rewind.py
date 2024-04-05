from preamble.preamble import *
from gamma.gamma import GammaNPP
from gamma.common import from_json
from graph.graph import Edge, Node


def shortest_path_rewind(before_graph_file, after_graph_result_file, transformation_file, verbose:bool=False):
    # recreate the original graph change the problem to reflect result from the transformation
    option = 1
    g_gamma = GammaNPP.revised_problem_from_result(before_graph_file, transformation_file, after_graph_result_file, option)
    
    edge_format = lambda e: (str(e.src), str(e.dst), str(e.label), e.cost, e.toll)
    
    nx_graph = nx.MultiDiGraph()
    for edge in g_gamma.phi_A.domain:
        u, v, key, cost, toll = edge_format(edge)
        nx_graph.add_edge(u, v, key=key, **{'cost': cost, 'toll': toll})
    
    
    sorted_edges = sorted(nx_graph.edges(keys=True, data=True), key=lambda x: int(x[2]))
    #for u, v, key, data in sorted_edges:
    #    print(u, v, key, data)
    
    
    od_pair_demand = []
    for p in g_gamma.problems_domain:
        od_pair_demand.append((str(p['orig']), str(p['dest']), p['demand']))
    
    def leader_profit(*paths, verbose=False):
        best_profit = -1
        best_edge_key_path = []
        for path in paths:
            current_profit = 0
            current_edge_key_path = []
            for (u,v) in zip(path[:-1:], path[1::]):
                edge_key_list = [key for key in nx_graph.get_edge_data(u, v)]
                format_ = lambda x:tuple(nx_graph[u][v][x].values())
                tmp_list = list(map(format_, edge_key_list))
                tmp_list = sorted(tmp_list, key=lambda x: (x[0], -int(x[1])))
                if verbose:
                    print(*tmp_list, sep='\n')
                if tmp_list[0][1]:
                    current_profit+=tmp_list[0][0]
                #current_edge_key_path.append(
            if current_profit > best_profit:
                best_profit = current_profit
        return best_profit
            
    start_time = time.time()
    #https://codereview.stackexchange.com/questions/235898/speeding-up-dijkstras-algorithm
    total_profit = 0
    for o,d,n in od_pair_demand:
        s_paths = list(nx.all_shortest_paths(nx_graph, o,d, weight='cost'))
        total_profit += leader_profit(*s_paths)*n
    
    end_time = time.time()
    return total_profit, end_time-start_time
