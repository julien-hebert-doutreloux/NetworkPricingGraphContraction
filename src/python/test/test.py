from preamble.preamble import *
from gamma.common import from_json, set_of_frozenset
from unit_test.tools import timing_decorator, unit_test_decorator
from plot.plot_graph import plot_graph, old_plot_graph


def bell_number(n):
    if n == 0:
        return 1
    
    bell = [[0] * (n + 1) for _ in range(n + 1)]
    bell[0][0] = 1
    
    for i in range(1, n + 1):
        bell[i][0] = bell[i - 1][i - 1]
        
        for j in range(1, i + 1):
            bell[i][j] = bell[i - 1][j - 1] + bell[i][j - 1]
    
    return bell[n][0]
    


@timing_decorator
def main(input_file):

    # Import example
    nodes, edges, problems = from_json(input_file)
    
    multi_digraph = nx.MultiDiGraph()
    multi_digraph.add_nodes_from(nodes)
    for edge in edges:
        src = edge.src
        dst = edge.dst
        print(edge())
        label = edge.label
        multi_digraph.add_edge(src, dst, key=label)
    
    basename, extension = os.path.splitext(os.path.basename(input_file))
    print(basename)
    plot_graph(multi_digraph, output_path='figure/', filename=basename)
