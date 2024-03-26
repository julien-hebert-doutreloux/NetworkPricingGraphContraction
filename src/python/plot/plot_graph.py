from preamble.preamble import *
from gamma.gamma import *
from unit_test.examples import exemple1, exemple2, exemple3, exemple5, exempleX, exempleXI

def curve_point(start, end, angle, tt=1/2):
    # Quadratic bezier curve
    #https://stackoverflow.com/questions/50871343/connectionstyle-arc3-fancyarrowpatch-and-path-curve3-two-quadratic-bezier-cu

    # Start point
    vs = np.asarray(start)
    # End point
    ve = np.asarray(end)
    # Connection vector start->end
    vD = ve - vs
    # Perpendicular vector to vD
    vp = np.asarray([vD[1],-vD[0]])
    
    # Control point: same distance from start and end point, and rad*|vD| 
    # from the connection line between start and end
    vc = vs+0.5*vD+angle*vp
    return ((1-tt)**2)*vs+(2*(1-tt)*tt)*vc+(tt**2)*ve
    
    
def old_plot_graph(graph, pos=nx.circular_layout, output_path='', filename='graph', extension='pdf', **kwargs):

    # Set a larger figure size
    fig, ax = plt.subplots(figsize=(25, 25))

    # Draw the graph
    ax.set_aspect('equal', adjustable='box')
    ax.axis('off')
    
    # Need to install LaTeX
    #plt.rc('text', usetex=True) #LaTeX
    
    # Draw nodes
    node_size = 500
    nx.draw_networkx_nodes(
                            graph,
                            pos,
                            node_color='r',
                            node_size=node_size,
                            alpha=1
                            )
    
    # Draw node labels
    node_labels = {node: node for node in graph.nodes()}
    nx.draw_networkx_labels(graph, pos, labels=node_labels)
    
    parallel_count = {}
    for e in graph.edges:
        # e = {start_node, end_node, key}
        
        start_node = pos[e[0]]
        end_node = pos[e[1]]
        edge = (e[0], e[1])
        
        if edge in parallel_count: parallel_count[edge] +=1
        else: parallel_count[edge] = 0
            
        cst = parallel_count[edge]
        edge_label = e[2]
        rad = 0.5 * cst
        edge_label_pos = curve_point(
                            start=start_node,
                            end=end_node,
                            angle=rad,
                            tt=1/2
                            )
        
        if edge[0] == edge[1]:
            nx.draw_networkx_edges(graph, pos, 
                                    edgelist=[edge],
                                    edge_color='r',
                                    arrowsize=15,
                                    width=np.log(len(e[2])+1),
                                    connectionstyle=f"arc3,rad={4}"
                                    )            
        else:
            #https://matplotlib.org/stable/gallery/userdemo/connectionstyle_demo.html
            #https://stackoverflow.com/questions/22785849/drawing-multiple-edges-between-two-nodes-with-networkx
            # fancy arrow
            arrow = ax.annotate(
                                "",
                                xy=end_node,
                                xycoords='data',
                                xytext=start_node,
                                textcoords='data',
                                arrowprops=dict(
                                                linewidth=1,
                                                arrowstyle="->",
                                                mutation_scale=20,
                                                color="0.25",
                                                shrinkA=9,
                                                shrinkB=8,
                                                patchA=None,
                                                patchB=None,
                                                connectionstyle=f"arc3,rad={rad}",
                                            ),
                            )
                
            # Add edge label separately using plt.text
            plt.text(
                    edge_label_pos[0],
                    edge_label_pos[1],
                    edge_label,
                    color='black',
                    ha='center',
                    va='center',
                    bbox=dict(
                            facecolor='white',
                            edgecolor='none',
                            boxstyle='round,pad=0.2'
                        )
                    )
    
    
    plt.tight_layout()
    output_file = os.path.join(output_path, f"{filename}.{extension}")
    plt.savefig(output_file, format=extension, bbox_inches = 'tight', pad_inches = 0)


def plot_graph(graph, pos=nx.circular_layout, output_path='', filename='graph', extension='pdf', **kwargs):
    # Set a larger figure size
    fig, ax = plt.subplots(figsize=(25, 25))

    # Draw the graph
    ax.set_aspect('equal', adjustable='box')
    ax.axis('off')
    
    # Need to install LaTeX
    #plt.rc('text', usetex=True) #LaTeX
    
    tmp_dict = {}
    # Parallel edges
    for edge in graph.edges:
        if not edge[:2:] in tmp_dict:
            tmp_dict[edge[:2:]] = []
        tmp_dict[edge[:2:]].append(edge[2])
    
    
    addapted_graph = nx.MultiDiGraph()
    for (source, target), label in tmp_dict.items():
        if type(label) == list:
            if len(label) == 1:
                label = label[0]
            else:
                label = '{' + ', '.join(label) + '}'
            
        addapted_graph.add_edge(source, target, label)
        tmp_dict[(source, target)] = label
        
    # Plot the graph
    pos = pos(addapted_graph)
    #print(*pos.items(), sep='\n')
    nx.draw(
        addapted_graph, pos,
        with_labels=True,
        node_size=1500,
        node_color="skyblue",
        font_size=14
        )
        
    nx.draw_networkx_edge_labels(
        addapted_graph, pos,
        edge_labels=tmp_dict,
        font_color='red',
        font_size=14,
        label_pos=0.5
    )
    
    plt.tight_layout()
    output_file = os.path.join(output_path, f"{filename}.{extension}")
    print(output_file)
    plt.savefig(output_file, format=extension, bbox_inches = 'tight', pad_inches = 0)
        

    
    
if __name__ == "__main__":

    # Graph definition and transformation
    nodes, edges, edge_partition = exempleXI()
    gamma_test  = Gamma(nodes, edges, edge_partition)
    gamma_test.summary(nodes, edges, edge_partition)

    # Before transformation
    nodes = gamma_test.nodes_domain
    edges = gamma_test.edges_domain

    # After transformation
    transformed_nodes = gamma_test.nodes_image
    transformed_edges = gamma_test.edges_image

    graph_nodes = transformed_nodes
    graph_edges = transformed_edges
    
    multi_digraph = nx.MultiDiGraph()
    multi_digraph.add_nodes_from(graph_nodes)
        
    for edge in graph_edges:
        src = edge.src
        dst = edge.dst
        label = edge.label
        multi_digraph.add_edge(src, dst, key=label)

    pos = nx.circular_layout
    #pos = nx.spring_layout
    #pos = lambda g: nx.spectral_layout(g)
    #pos = nx.planar_layout(multi_digraph, scale=1)
    #pos = nx.kamada_kawai_layout
    plot_graph(multi_digraph, pos, output_path='figure/', filename='normal')
