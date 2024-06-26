class Edge:
    def __init__(self, src, dst, cost=None, toll=False):
        self._src = src
        self._dst = dst
        self._cost = cost
        self._toll = toll
        
    def __hash__(self):
        return hash((self._src, self._dst, self._cost, self._toll))
        
    @property
    def src(self):
        return self._src
        
    @property
    def dst(self):
        return self._dst
        
    @property
    def cost(self):
        return self._cost
        
    @property
    def toll(self):
        return self._toll
    
    def __str__(self):
        return str((self._src, self._dst, self._cost, self._toll))



def exemple2():        
    # Exemple  2    
    edge1 = Edge('v1', 'v2')
    edge2 = Edge('v2', 'v4')
    edge3 = Edge('v2', 'v3')
    edge4 = Edge('v3', 'v4')

    edge_partition = {
        (edge1, edge4),
        (edge2,),
        (edge3,)
    }
    nodes = set(('v1','v2','v3','v4'))
    return nodes, edge_partition

def exemple3():
    # Exemple 3
    edge1 = Edge('v1', 'u')
    edge2 = Edge('v1', 'v2')
    edge3 = Edge('v', 'v3')
    edge4 = Edge('w', 'v4')
    edge5 = Edge('v2', 'v5')
    edge9 = Edge('v5', 'w')
    edge11 = Edge('v2', 'v')

    # definition de l'ensemble quotient des arcs (A/~)
    edge_partition = {
        (edge1, edge11),
        (edge3, edge4),
        (edge2,),
        (edge5,),
        (edge9,)    
    }

    # Nom et symbole des sommets sous forme d'ensemble
    nodes      = set(('v1','v2','v3','v4','v5','u','v','w'))
    return nodes, edge_partition 

def exemple5():
    # Exemple 5
    edge1 = Edge('v1', 'u')
    edge2 = Edge('v1', 'v2')
    edge3 = Edge('v', 'v3')
    edge4 = Edge('w', 'v4')
    edge5 = Edge('v2', 'v5')
    edge6 = Edge('v5', 'v6')
    edge7 = Edge('ξ', 'v7')
    edge8 = Edge('γ', 'v8')
    edge9 = Edge('v5', 'w')
    edge10 = Edge('v6', 'ξ')
    edge11 = Edge('v2', 'v')
    edge12 = Edge('v6', 'γ')

    # definition de l'ensemble quotient des arcs (A/~)
    edge_partition = [
        (edge1, edge11),
        (edge3, edge4),
        (edge2,),
        (edge5,),
        (edge6,),
        (edge7, edge8),
        (edge9, edge10),
        (edge12,)
    ]

    # Nom et symbole des sommets sous forme d'ensemble
    nodes      = ['v1','v2','v3','v4','v5','v6','v7','v8','u','v','w','ξ','γ']
    return nodes, edge_partition 
    



def gamma2(nodes, edge_partition):
    V_quotient = []

    # Construire l'ensemble quotient partiel V/~
    for equiv_cls in edge_partition:
        
        # Couplage des sommets initial
        start_nodes = tuple([elem.src for elem in equiv_cls])
        
        # Couplage des sommets finaux
        end_nodes = tuple([elem.dst for elem in equiv_cls])
       
        V_quotient.append(start_nodes)
        V_quotient.append(end_nodes)
    
    i = 0
    j = 0
    i_max = len(V_quotient)
    while i<=i_max-j-1:
        elem_to_go = V_quotient[i]
        for _ in range(2):
            for elem_to_check in V_quotient.copy():
                
                cls1 = set(elem_to_go)
                cls2 = set(elem_to_check)
                
                if cls1.intersection(cls2) != set() and cls1!=cls2:
                    if elem_to_go in V_quotient:
                        V_quotient.remove(elem_to_go)
                        
                    if elem_to_check in V_quotient:
                        V_quotient.remove(elem_to_check)                
                    j+= 1
                    
                    cls1.update(cls2)
                    elem_to_go = tuple(cls1)
                    V_quotient.insert(0, elem_to_go)
        i+=1
        
    return V_quotient
    
#print(gamma2(*exemple2()))
#print(gamma2(*exemple3()))

print(*gamma2(*exemple5()),sep='\n')

tmp_dict = {node.value: node for node in self.nodes_image}
        #transformed_edges = []

        #for cls in self.edge_partition:
            start_nodes = set([e.src for e in cls])
            end_nodes = set([e.dst for e in cls])
            
            start_node, end_node = None, None
            edge = None
            transformed_nodes_c = self.nodes.copy()
            while not edge:
            
                node = transformed_nodes_c.pop()
                node_set = set(node)
                intersection_start = start_nodes & node_set
                intersection_end = end_nodes & node_set
                
                if intersection_start and not start_node:
                    start_node = node
                    
                if intersection_end and not end_node:
                    end_node = node
                    
                if start_node and end_node:
                    try:
                        edge = Edge(tmp_dict[start_node], tmp_dict[end_node], tuple([c.label for c in cls]))
                    except KeyError:
                        print(tmp_dict.keys(), start_node, end_node)
                    
                    # Les paralleles sont possibles
                    transformed_edges.append(edge)
        
        return transformed_edges
        
        
        
def old_plot_graph(graph, pos=None, output_path='', filename='graph', extension='pdf', **kwargs):

    if type(pos) == type(None):
        pos = nx.kamada_kawai_layout(graph, seed=RANDOM_SEED)
        
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
    
    
def find_largest_compatible_union(rules:dict):
    # the order in sets_dict can change the result
    largest_union = set()
    for c in powerset_generator(rules.keys()):
        c = set(c)
        if len(c) > len(largest_union):
            if compatible(c, rules):
                largest_union = c
    return largest_union
    
    
def pairwise_intersection_is_empty(combination):
    for set1, set2 in combinations(combination, 2):
        if set1 & set2:
            return False
    return True        


if False:
    # Before transformation
    nodes = self.nodes_domain
    edges = self.edges_domain

    # After transformation
    transformed_nodes = self.nodes_image
    transformed_edges = self.edges_image

    nodes_str = [node() for node in nodes]
    edges_str = [e() for e in edges]
    edge_partition_str = [str(set(map(str,cls))) for cls in self.edge_partition]

    transformed_edges_str = [cls() for cls in transformed_edges]
    transformed_nodes_str = [cls() for cls in transformed_nodes]

    print_columns(
            nodes_str,
            edges_str,
            transformed_edges_str,
            transformed_nodes_str,
            edge_partition_str, 
            headers=['Nodes', 'Edges','\u03B3(Edges)','\u03B3(Nodes)', 'Edge partition']
        )
        
        
        
        
        
        
        if False:
            def union_if_intersection(a, S):
                if len(S) == 1:
                    return S
                   
                for i in range(len(S)-1):
                    b = S[i]
                    
                    if a == b:
                        pass
                        
                    if a & b != set():
                        c = set(a) | set(b)
                        S.remove(a)
                        
                        if b in S:
                            S.remove(b)
                        for e in c:
                            if set((e,)) in S:
                                S.remove(set((e,)))
                                
                        S.append(c)

                        #print(*[str(set(map(str,cls))) for cls in S], sep='\n')
                    
                        S = union_if_intersection(b, S)
                        break
                return S
            V_quotient = sorted(V_quotient, key=len, reverse=True)
            V_quotient = union_if_intersection(V_quotient[0], V_quotient)
            print(*[str(set(map(str,cls))) for cls in V_quotient], sep='\n')
            input()
            return list(map(tuple, V_quotient))
            
            
            
if False:
            i, j = 0, 0
            i_max = len(V_quotient)
            
            while i <= i_max-j-1:
                elem_to_go = V_quotient[i]
                
                # Nombre de passe
                for _ in range(3):
                    for elem_to_check in V_quotient.copy():
                        
                        cls1 = set(elem_to_go)
                        cls2 = set(elem_to_check)
                        
                        if (cls1 & cls2 != set()) and (cls1!= cls2):
                        
                            # suppression des dupplicats
                            if elem_to_go in V_quotient:
                                V_quotient.remove(elem_to_go)
                                
                            if elem_to_check in V_quotient:
                                V_quotient.remove(elem_to_check)
                                
                            j+= 1
                            
                            cls1.update(cls2)
                            elem_to_go = tuple(cls1)
                            V_quotient.insert(0, elem_to_go)
                i+=1
            return V_quotient
            
            
            
            
            
            
            
            
            
            
            
            
            
            

def disjoint(*sets):
    if len(sets) == 0:
        return True
    else:
        current = sets[0]
        for s in sets[1::]:
            if len(current & s) != 0:
                return False
            current |= s
        return True
        
        
            
@timing_decorator      
def test_partition(rules:dict, compatible_union:set):

    target_union = set(rules)
    all_partition = set()
    compatible_union_c = compatible_union.copy()
    current_partition = set()
    
    def recursive_generation(current_partition, compatible_union_c):
        #complement = compatible_union_c - current_partition
        #complement = filter(lambda x: disjoint(x, current_partition), complement)

        for u in compatible_union_c:
            current_partition.add(u)
            union = set().union(*current_partition)
            
            if union == target_union:
                all_partition.add(frozenset(current_partition))
            else:
                complement = complement_plus(compatible_union_c, current_partition)
                if complement != set():
                    recursive_generation(current_partition, complement)
            current_partition.remove(u)
        return

    recursive_generation(current_partition, compatible_union_c)


    return all_partition

@timing_decorator
def test_compatible_union(rules):
    union = set(rules.keys())
    compatible_union = set()
    
    #def n_sets(rules, current_set):
    #    union = set(rules.keys())
    #    complement = {g for i in current_set for g in rules[i]} | current_set
    #    n_set = set()
    #    for u in union-complement:
    #        n_set |= {frozenset(current_set | {u, }), }
    #    return n_set
    
    def recursive_generation(current_set):
        complement = {g for i in current_set for g in rules[i]} | current_set

        for u in union - complement:
            new_set = frozenset(current_set | {u, })
            compatible_union.add(new_set)
            recursive_generation(new_set)
    
    recursive_generation(set())
    return compatible_union
    
    
 

# Tested
def find_partition(target_union:set, compatible_set:list, rules:dict):
    """
    Finds a partition of the target union based on a compatible set and rules.

    This function takes a target union (a set), a compatible set (a list of sets),
    and a dictionary of rules as input. It aims to find a partition of the target union
    using the provided compatible set as pieces. The rules are used to find the compatible set.
    The partition is represented as a set of frozensets, where each set in the partition
    is compatible according to the rules.

    Parameters:
    - target_union: The target union to be partitioned (a set).
    - compatible_set: A list of sets that are known to be compatible.
    - rules: A dictionary where keys are elements and values are sets of compatible elements.

    Returns:
    A list of sets representing a partition of the target union.

    Example:
    >>> target_union = {'A', 'B', 'C'}
    >>> compatible_set = [{'A', 'B'}, {'C'}]
    >>> rules = {'A': {'B', 'C'}, 'B': {'A', 'D'}, 'C': {'A'}, 'D': {'B'}}
    >>> find_partition(target_union, compatible_set, rules)
    {frozenset({'B', 'A'}), frozenset({'C'})}
    """
    if set() in compatible_set:
        compatible_set.remove(set())
    
    result_combinations = []
    for r in range(1, len(compatible_set) + 1):
    
        for combination in combinations(compatible_set, r):
            combined_set = set(chain.from_iterable(combination))
            
            if combined_set == target_union and all(len(set1 & set2) == 0 for set1, set2 in combinations(combination, 2)):
                yield set(map(frozenset, combination))
                
@timing_decorator
def find_all_compatible_partition(rules:dict, compatible_union:list=[]):
    """
    Finds all possible compatible partitions based on a set of rules.

    This function takes a dictionary of rules as input. It generates all possible
    compatible partitions of the elements according to the provided rules. Each partition
    is represented as a set of frozensets, where each set in the partition is compatible
    according to the rules. The function yields each found partition.

    Parameters:
    - rules: A dictionary where keys are elements and values are sets of compatible elements.

    Yields:
    Each compatible partition of elements, represented as a list of sets.

    Example:
    >>> rules = {'A': {'B', 'C'}, 'B': {'A'}, 'C': {'A'}}
    >>> list(find_all_compatible_partition(rules))
    {
        frozenset(
                    {
                        frozenset({'C', 'B'}),
                        frozenset({'A'})
                    }
                ),
        frozenset(
                    {
                        frozenset({'A'}),
                        frozenset({'B'}),
                        frozenset({'C'})
                    }
                ),
    }
    """
    
    
    all_partition  = set()
    if compatible_union == []:
        compatible_union = list(find_every_compatible_union(rules))
        
    if set() in compatible_union:
        compatible_union.remove(set()) # pop empty set
    
    full_set = set(list(rules.keys()))
    
    for union in compatible_union:
    
        compatible_set = []
        for c in compatible_union:
            if len(c)+len(union) <= len(full_set):
                if c & union == set():
                    compatible_set.append(c)
    
        target_union = full_set - union
        for x in find_partition(target_union, compatible_set, rules):
            ss = set( (*x, frozenset(union)) )
            all_partition.add(frozenset(ss))

    return all_partition
   
@timing_decorator   
def test_partition_2(rules, compatible_union):
    all_partition = set()
    target_union = set(rules)
    current_union = set()
    current_partition = set()
    
    def complement_plus(cu, cp):
        cc = filter(lambda x: not any(map(lambda y: x & y, cp)), cu)
        return set(cc)
        
    def recursive_generation(compatible_union_c, current_partition, current_union):

        for u in compatible_union_c:
            current_partition.add(u)
            current_union |= u
            
            if current_union == target_union:
                all_partition.add(frozenset(current_partition))

            else:
                complement = complement_plus(compatible_union_c, current_partition)
                if complement != set():
                    recursive_generation(complement, current_partition, current_union)
            
            current_partition.remove(u)
            current_union -= u 
        return
    
    while compatible_union:
        #candidate = min(compatible_union, key=len)  # Pop the least long element
        #compatible_union.remove(candidate)  # Remove the element
        
        candidate = next(compatible_union)
        current_partition.add(candidate)
        current_union |=candidate
        
        complement = complement_plus(compatible_union, current_partition)
        recursive_generation(complement, current_partition, current_union)
        
        current_union.clear()
        current_partition.clear()
    return all_partition


@unit_test_decorator
def UNIT_TEST_find_partition():

    test_rules = {
        'e1': set(),
        'e4': set(),
        'e3': {'e7',},
        'e7': {'e3',},
    }
    
    test_compatible = { frozenset(x) for x in find_every_compatible_union(test_rules) }
    
    
    test_target_set = {'e7'}
    test_output_set =  {
                        frozenset(x) for x in find_partition(test_target_set, test_compatible, test_rules)
                        }
    true_output_set = {
                        frozenset(
                                    (frozenset({'e7'}),)
                                )
                    }
    test = (true_output_set == test_output_set)
    assert test, "find_partition failed"
    
    test_target_set = set()
    test_output_set =  {
                        frozenset(x) for x in find_partition(test_target_set, test_compatible, test_rules)
                        }
    true_output_set = set()
    test = (true_output_set == test_output_set)    
    assert test, "find_partition failed"
    
    test_target_set = {'e1', 'e7'}
    test_output_set =  {
                        frozenset(x) for x in find_partition(test_target_set, test_compatible, test_rules)
                        }
    true_output_set = {                        
                        frozenset(
                                    {
                                        frozenset({'e1', 'e7'}), 
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1'}),
                                    frozenset({'e7'})
                                    }
                                 ),
                    }
    test = (true_output_set == test_output_set)    
    assert test, "find_partition failed"
    
    test_target_set = {'e1', 'e7', 'e4'}
    test_output_set =  {
                        frozenset(x) for x in find_partition(test_target_set, test_compatible, test_rules)
                        }
                        
    true_output_set = { 
                        frozenset(
                                    {
                                    frozenset({'e1', 'e7', 'e4'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1', 'e7'}),
                                    frozenset({'e4'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e4', 'e7'}),
                                    frozenset({'e1'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e4', 'e1'}),
                                    frozenset({'e7'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1'}),
                                    frozenset({'e7'}),
                                    frozenset({'e4'}),
                                    }
                                 ),
                    }
                        
    test = (true_output_set == test_output_set)    
    assert test, "find_partition failed"
    
    
    test_target_set = {'e1', 'e3', 'e4', 'e7'}
    test_output_set =  {
                        frozenset(x) for x in find_partition(test_target_set, test_compatible, test_rules)
                        }
    true_output_set = {                        
                        frozenset(
                                    {
                                    frozenset({'e1', 'e7'}),
                                    frozenset({'e4'}),
                                    frozenset({'e3'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1', 'e4'}),
                                    frozenset({'e3'}),
                                    frozenset({'e7'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1', 'e3'}),
                                    frozenset({'e4'}),
                                    frozenset({'e7'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e3', 'e4'}),
                                    frozenset({'e1'}),
                                    frozenset({'e7'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e4', 'e7'}),
                                    frozenset({'e1'}),
                                    frozenset({'e3'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1', 'e4', 'e7'}),
                                    frozenset({'e3'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1', 'e4', 'e3'}),
                                    frozenset({'e7'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e4', 'e7'}),
                                    frozenset({'e1', 'e3'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1', 'e7'}),
                                    frozenset({'e3', 'e4'}),
                                    }
                                ),
                        frozenset(
                                    {
                                    frozenset({'e1'}),
                                    frozenset({'e7'}),
                                    frozenset({'e4'}),
                                    frozenset({'e3'}),
                                    }
                                 ),
                    }
    test = (true_output_set == test_output_set)
    assert test, "find_partition failed"
# Function to generate random partitions
def generate_partitions(elements, N, M, H1=True, H2=True, H3=True):


    # N  : Maximum number of elements in an edge equivalence class (0 for no limit and by default)
    # M  : Number of edge equivalence classes with more than one element (0 for no limit and by default)

    
    number_of_tolled_edge = len(list(filter(lambda x: x.toll==True, elements)))
    N = max(number_of_tolled_edge, N)
    prepartition = elements.copy()
    
    if N <= 1:
        return [(element,) for element in elements]
        
    
    return prepartition
def find_all_independent_partitions(graph):
    all_partitions = []

    def is_valid_partition(partition):
        for subset in partition:
            for node1 in subset:
                for node2 in subset:
                    if node1 != node2 and node2 in graph[node1]:
                        return False
        return True

    def backtrack(start, current_partition):
        nonlocal all_partitions

        if start == len(graph):
            if is_valid_partition(current_partition):
                all_partitions.append([set(subset) for subset in current_partition])
            return

        for i in range(len(current_partition)):
            current_partition[i].append(list(graph.keys())[start])
            backtrack(start + 1, current_partition)
            current_partition[i].pop()

        current_partition.append([list(graph.keys())[start]])
        backtrack(start + 1, current_partition)
        current_partition.pop()

    backtrack(0, [])

    return all_partitions
    

##############################
    
test_rules = {'A': {'G', 'E', 'B', 'C', 'D', 'H', 'I', 'J'}, 
              'B': {'A', 'G', 'D', 'E', 'F', 'H'},
              'C': {'D', 'E', 'A', 'F', 'I'},
              'D': {'E', 'A', 'C', 'G', 'B', 'F', 'H', 'I', 'J'},
              'E': {'G', 'D', 'A', 'B', 'C', 'F', 'H', 'I'},
              'F': {'D', 'B', 'C', 'E', 'G', 'H', 'J'},
              'G': {'E', 'D', 'A', 'F', 'B', 'H', 'I', 'J'},
              'H': {'E', 'D', 'A', 'F', 'G', 'B'}, 
              'I': {'E', 'D', 'A', 'C', 'G'},
              'J': {'D', 'A', 'F', 'G'}
              }
              
              
              
all_independent_partitions = find_all_independent_partitions(test_rules)
#print(*all_independent_partitions, sep='\n')


print(len(all_independent_partitions))
test_output_set = set_of_frozenset(map(set_of_frozenset,  all_independent_partitions))
true_output_set = set_of_frozenset(find_all_compatible_partition_brute_force(test_rules))
print(len(true_output_set))
test = (true_output_set == test_output_set)
assert test, "find_partition failed"







# Tested
def compatible_union_not_brute_force(rules:dict):
    print("[compatible_union_not_brute_force]")
    # v1
    all_unions = {}
    
    # 1-union
    all_unions[1] = {frozenset({k,}) for k in rules}
    print(f"|{1}-union| = {len(all_unions[1])}")
    
    # 2-union
    all_unions[2] = {frozenset({k, x}) for k, v in rules.items() for x in v if k!=x}
    print(f"|{2}-union| = {len(all_unions[2])}")
    
    def perform_unions_recursively(all_unions, n, rules):
        if n <= 2:
            return

        current_union_set = all_unions[n - 1].copy()
        next_union_set = set()

        while current_union_set:
            u = current_union_set.pop()
            for v in current_union_set:
                union_result = u | v
                if compatible(union_result, rules):
                    next_union_set.add(union_result)

        all_unions[n] = next_union_set.copy()

        if next_union_set:
            print(f"|{n}-union| = {len(all_unions[n])}")
            perform_unions_recursively(all_unions, n+1, rules)
        

    perform_unions_recursively(all_unions, 3, rules)            
    return set().union(*all_unions.values())
    

def find_largest_intersection(rules):

    def recursive(current_union, current_intersection):
        
        if set(current_intersection) == set(current_union):
            return frozenset(current_union)
            
            
        else:
            keys = sorted(list(current_intersection-current_union), key=lambda x: len(rules[x]))
            intersection_lenght = dict()
            gl = -1
            
            while keys:
                e1 = keys.pop()
                intersection = frozenset(current_intersection & rules[e1])
                union = frozenset(current_union | {e1, })
                
                if union.issubset(intersection):
                    l = len(intersection)
                    
                    if gl <= l:
                        if gl < l:
                            intersection_lenght = {}
                            gl = l
                            
                        intersection_lenght[union] = intersection
                        
            while intersection_lenght:
                #try:
                ci, ck = intersection_lenght.popitem()
                
                if not any(filter(lambda x: ci.issubset(x), all_res)):
                    res = recursive(ci, ck)
                    if res:
                        #sorted =  cip(list(ci), key=lambda x: int(x[1::]))
                        #input(f"{len(cip)}")# -- ci = {cip}")
                        #if any(filter(lambda x: set(res) == set(x), all_res)):
                        #    input("Duplicates")
                        all_res.append(res)
                       
                        #check up
                        #print("All Res")
                        #print(*all_res, sep='\n')
                
                #except:
                #    input(f"error")
                #    input(f"ci = {ci}")
                #    input(f"ck = {ck-ci}")
                #    input("ALL RES")
                   # print(*all_res, sep='\n')
                   # input('Continue')
            
            
            
    # etape 1
    keys = sorted(list(rules), key=lambda x: len(rules[x]))
    intersection_lenght = dict()
    gl = -1
    
    while keys:
        e1 = keys.pop()
        for e2 in keys:
            intersection = frozenset(rules[e1] & rules[e2])
            union = frozenset({e1, e2})
            
            if union.issubset(intersection):
                l = len(intersection)
                
                if gl <= l:
                    if gl < l:
                        intersection_lenght = {}
                        gl = l
                        
                    intersection_lenght[union] = intersection
                    
    all_res = []
    while intersection_lenght:
        ci, ck = intersection_lenght.popitem()
        res = recursive(ci, ck)
        if res:
            all_res.append(recursive(ci, ck))
            
            
    return all_res
    
    


def export_to_julia_dict(test_rules, filename="test_rules.jl"):
    julia_dict_str = "{\n"
    for key, values in test_rules.items():
        st = list(map(str, values))
        julia_dict_str += f'    "{key}" => Set({st}),\n'
        

    julia_dict_str += "}"
    julia_dict_str = julia_dict_str.replace("'",'"')
    with open(filename, "w") as file:
        file.write(julia_dict_str)
        
    return filename
    
    
def summary(nodes:list, edges:list, edge_partition=None):
    if type(edge_partition) != type(None):
        gamma_test  = Gamma(nodes, edges, edge_partition)

        # Before transformation
        nodes = gamma_test.nodes_domain
        edges = gamma_test.edges_domain

        # After transformation
        transformed_nodes = gamma_test.nodes_image
        transformed_edges = gamma_test.edges_image

        nodes_str = [node() for node in nodes]
        edges_str = [e() for e in edges]
        edge_partition_str = [str(set(map(str,cls))) for cls in edge_partition]

        transformed_edges_str = [cls() for cls in transformed_edges]
        transformed_nodes_str = [cls() for cls in transformed_nodes]

        print_columns(
                nodes_str,
                edges_str,
                transformed_edges_str,
                transformed_nodes_str,
                edge_partition_str, 
                headers=['Nodes', 'Edges','\u03B3(Edges)','\u03B3(Nodes)', 'Edge partition']
            )
    else:
        nodes_str = [node() for node in nodes]
        edges_str = [e() for e in edges]
        print_columns(
                nodes_str,
                edges_str,
                headers=['Nodes', 'Edges']
                )
                
                
                
                
                
                
                
@property
    def nodes_domain_index(self):
        """Node-Index table to order domain nodes"""
        if not hasattr(self, '_nodes_domain_index'):
            self._nodes_domain_index = {
                node:i for i, node in enumerate(self.nodes_domain, start=1)
            }
        return self._nodes_domain_index
    @nodes_domain_index.setter
    def nodes_domain_index(self, value):
        raise AttributeError("Cannot modify the 'nodes_domain_index' property directly.")
        
        
    @property
    def nodes_image_index(self):
        """Node-Index table to order the image nodes"""
        if not hasattr(self, '_nodes_image_index'):
            self._nodes_image_index = {
                node:i for i, node in enumerate(self.nodes_image, start=1)
            }
        return self._nodes_image_index
    @nodes_image_index.setter
    def nodes_image_index(self, value):
        raise AttributeError("Cannot modify the 'nodes_image_index' property directly.")
    
    
    @property
    def edges_domain_index(self):
        """Edge-Index table to order the domain edges"""
        if not hasattr(self, '_edges_domain_index'):
            self._edges_domain_index = {
                edge:i for i, edge in enumerate(self.edges_domain, start=1)
            }
        return self._edges_domain_index
    @edges_domain_index.setter
    def edges_domain_index(self, value):
        raise AttributeError("Cannot modify the 'edges_domain_index' property directly.")
    
    
    @property
    def edges_image_index(self):
        """Edge-Index table to order the image edges"""
        if not hasattr(self, '_edges_image_index'):
            self._edges_image_index = {
                edge:i for i, edge in enumerate(self.edges_image, start=1)
            }
        return self._edges_image_index
    @edges_image_index.setter
    def edges_image_index(self, value):
        raise AttributeError("Cannot modify the 'edges_image_index' property directly.")
        
        
    @property
    def nodes_table_of_correspondance(self):
        """Node DomainIndex-ImageIndex table (direct index link)"""
        if not hasattr(self, '_nodes_table_of_correspondance'):
            self._nodes_table_of_correspondance = {
                i: self.nodes_image_index[self(node)] for node, i in  self.nodes_domain_index.items()
                }
        return self._nodes_table_of_correspondance
    @nodes_table_of_correspondance.setter
    def nodes_table_of_correspondance(self, value):
        raise AttributeError("Cannot modify the 'nodes_table_of_correspondance' property directly.")
        
        
    @property
    def edges_table_of_correspondance(self):
        """Edge DomainIndex-ImageIndex table (direct index link)"""
        if not hasattr(self, '_edges_table_of_correspondance'):
            self._edges_table_of_correspondance = {
                i: self.edges_image_index[self(edge)] for edge, i in  self.edges_domain_index.items()
                }
        return self._edges_table_of_correspondance
    @edges_table_of_correspondance.setter
    def edges_table_of_correspondance(self, value):
        raise AttributeError("Cannot modify the 'edges_table_of_correspondance' property directly.")
        
        
    @property
    def problems_domain(self):
        return self._problems_domain
    @problems_domain.setter
    def problems_domain(self, value):
        raise AttributeError("Cannot modify the 'problems_domain' property directly.")
        
        
        
        
        
        
        
if False:
        
            self.edge_partition = edge_partition if edge_partition else [(e,) for e in edges]
            self.node_partition = Gamma.find_node_partition(self.edge_partition)
            
            nodes_correspondance = {}
            for cls in self.node_partition:
                label, value = f"[{list(cls)[0]}]", cls
                representant = Node(label, value)
                for e in cls:
                    nodes_correspondance[e] = representant
            
            # varphi_V : V -> ~V
            self.node_function = Function(nodes_correspondance)
            self.nodes_domain = self.node_function.domain
            self.nodes_image = self.node_function.image
            
            
            edges_correspondance = {}
            for cls in self.edge_partition:
                src, dst = self(cls[0].src), self(cls[0].dst)
                label = f"[{cls[0].label}]"
                cost, toll= cls[0].cost, cls[0].toll# hypothese
                representant = Edge(src, dst, label, cost, toll)
                for e in cls:
                    edges_correspondance[e] = representant
                    
            # varphi_A : A -> ~A
            self.edge_function = Function(edges_correspondance)
            self.edges_domain = self.edge_function.domain
            self.edges_image = self.edge_function.image
            
            
            # iota_V : V -> I_V
            nodes_domain_index_correspondance = {i : node for i, node in enumerate(self.nodes_domain)}
            self.nodes_domain_index_function = Function(nodes_domain_index_correspondance)
            
            # iota_{~V} : ~V -> I_{~V}
            nodes_image_index_correspondance = {i : node for i, node in enumerate(self.nodes_image)}
            self.nodes_image_index_function = Function(nodes_image_index_correspondance)
            
            # iota_A : A -> I_A
            edges_domain_index_correspondance = {i : edge for i, edge in enumerate(self.edges_domain)}
            self.edges_domain_index_function = Function(edges_domain_index_correspondance)
            
            # iota_{~A} : ~A -> I_{~A}
            edges_image_index_correspondance = {i : edge for i, edge in enumerate(self.edges_image)}
            self.edges_image_index_function = Function(edges_image_index_correspondance)
            
            # iota_{~V}(varphi_V(iota^{-1}_V(x)))
            nodes_index_to_index_function_correspondance = {i : 
                                                                self.nodes_image_index_function(
                                                                    self.node_function(
                                                                        self.nodes_domain_index_function.inverse(i)))
                                                                    for i in self.nodes_domain_index_function.domain
                                                                }
            self.nodes_index_to_index_function = Function(nodes_index_to_index_function_correspondance)
        
        
    #def __call__(self, x):
    #    """Polyvalent gamma function for both the node and the edge element"""
    #    if type(x) == Node:
    #        if x in self.nodes_domain:
    #            return self.node_function(x)
    #            
    #        raise ValueError(f"{x} does not exists in the domain")
    #        
    #    elif type(x) == Edge:
    #        if x in self.edges_domain:
    #            return self.edge_function(x)
    #        
    #        raise ValueError(f"{x} does not exists in the domain")
    #        
    #    raise TypeError(f"Cannot compute image of an {x}:{type(x)}") 
    def export_partition(self, directory, filename):
        # Check if the directory exists
        if not os.path.isdir(directory):
            print(f"Error: The specified directory does not exist: {directory}")
            return

        # Check if the filename is not empty
        if not filename:
            print("Error: The specified filename is empty")
            return
            
        # Verify the extension
        if filename.endswith('.pkl'):
            filename = filename.rstrip('.pkl')
    
        output_file = os.path.join(directory, f"{filename}.pkl")

        # Check if the file already exists
        if os.path.isfile(output_file):
            print(f"Error: The specified file already exists: {output_file}")
            return

        edge_partition = [set(map(str, x)) for x in self.edge_partition]
        
        # Write the list of sets to the file
        with open(output_file, 'wb') as f:
            pickle.dump(edge_partition, f)  # Fixed variable name here      
            
            
            
            
            
            
            @property
    def problems_image(self):
        
        #print(*self.nodes_domain, sep='\n')
        
        if not hasattr(self, '_problems_image'):
            self._problems_image = []
            tmp = []
            
            for k in self.problems_domain:
                origin_destination = (self(k['orig']), self(k['dest']))
                if not origin_destination in tmp:
                    tmp.append(origin_destination)
                    self._problems_image.append({})
                    self._problems_image[-1]['orig'] = self(k['orig'])
                    self._problems_image[-1]['dest'] = self(k['dest'])
                    self._problems_image[-1]['demand'] = k['demand']
                    
                else:
                    index = tmp.index(origin_destination)
                    self._problems_image[-1]['demand'] += k['demand']
                
        return self._problems_image
    @problems_image.setter
    def image_problems(self, value):
        raise AttributeError("Cannot modify the 'problems_image' property directly.")
        
        
        
        
    #def __lt__(self, other):
    #    if not isinstance(other, Node):
    #        return NotImplemented
    #    return self.label < other.label

    #def __le__(self, other):
    #    if not isinstance(other, Node):
    #        return NotImplemented
    #    return self.label <= other.label

    #def __gt__(self, other):
    #    if not isinstance(other, Node):
    #        return NotImplemented
    #    return self.label > other.label

    #def __ge__(self, other):
    #    if not isinstance(other, Node):
    #        return NotImplemented
    #    return self.label >= other.label
    
    
    @property
    def valid(self):
        for vertex in self:
            for neighbor in self[vertex]:
                if not vertex in self[neighbor]:
                    return False
                    
            if not vertex in self[vertex]:
                return False
        return True
        
        
        @property
    def complement_rules(self):
        if not hasattr(self, '_complement_rules'):
            self._complement_rules = {k: set(self) - v for k, v in self.items()}
        return self._complement_rules
    
    @complement_rules.setter
    def complement_rules(self, value):
        raise AttributeError("Cannot modify the 'complement_rules' property directly.")
        
        
        
        
        
        
        
        
        
        
        
        
        
        
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
        
    graph = addapted_graph
    pos = pos(addapted_graph)
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
    
          
class IndexBridge:

        #  T_AV      ⊆      A_AV ---gamma---> A_AP      ⊇      T_AP      
        #   ||                ||              ||                 ||
        # phi_T_AV            phi_AV           phi_AP          phi_T_AP
        #   ||                ||              ||                 ||
        #   \/                \/              \/                 \/
        #  I_T_AV --alpha--> I_AV --conv_1--> I_AP  <---beta--- I_T_AP
        #   ||                                                   /\
        #   ||                                                   ||
        #    -----------------------conv_2------------------------
        
        
        
        # A_AV   := edge set
        # I_AV   := natural index for A_AV
        # T_AV   := tolled edge set (subset of A_AV)
        # I_T_AV := natural index for T_AV
        # A_AP   := edge set after transformation by gamma
        # I_AP   := natural index for A_AP
        # T_AP   := tolled edge set (subset of A_AP)
        # I_T_AP := natural index for T_AP
        
        
        # conv_1 = phi_AP * gamma * phi_AV^-1
        # alpha  = phi_AV * phi_T_AV^-1
        # beta   = phi_AP * phi_T_AP^-1
        # conv_2 = beta^-1 * conv_1 * alpha
        
        
        
        
    __slots__ = (
                'conv_1', 'conv_2'\
                'A_AV', 'A_AP'\
                'phi_1', 'phi_2'\
                'I_AV', 'I_AP',\
                #
                'T_AV', 'T_AP',\
                'phi_3', 'phi_4'\
                'I_T_AV', 'I_T_AP',
                
                )
    def __init__(self, before_json, after_json, transformation_file):
    
        nodes, edges, problems = from_json(before_json)
        g_gamma = Gamma.from_transformation_pickle(nodes, edges, transformation_file)
        
        # Verify that the problem from after_json is the same as the transformation does on before_json
        
        # General conversion from natural edge index of the original problem to the transformed one
        #  A_AV ---gamma---> A_AP
        #   ||              ||
        #  phi_1           phi_2
        #   ||              ||
        #   \/              \/
        #   I_AV --conv_1--> I_AP
        
        # A_AV is the edge set before transformation
        # A_AP is the edge set after transformation
        # gamma is the transformation function
        
        # I_AV is the natural index (start at 1) set for the edge before transformation 
        # phi_1 is map between the edge set and the index set
        
        # I_AP is the natural index (start at 1) set for the edge after transformation
        # phi_2 is the map between the edge set and the index set
        
        # conv_1 is defined by phi_2( gamma( phi_1_inv( i ) ) ) for i in I_AV
        # conv_1 is useful to retrieve the flow of every edge in the result file
        
        A_AV = g_gamma.edges_domain_index.domain
        phi_1 = g_gamma.edges_domain_index
        phi_1_inv = Function({phi_1(ej):ej for ej in A_AV})
        
        A_AP = g_gamma.edges_image_index.domain
        phi_2 = g_gamma.edges_image_index
        phi_2_inv = Function({phi_2(ej):ej for ej in A_AP})
        conversion1 = lambda i : phi_2(g_gamma(phi_1_inv(i)))
        
        # General conversion from natural tolled edge index of the original problem to the transformed one
        #  T_AV ---gamma---> T_AP
        #   ||              ||
        #  phi_3           phi_4
        #   ||              ||
        #   \/              \/
        #   I_T_AV --conv_2--> I_T_AP
        
        # T_AV is the set of tolled edge before transformation
        # T_AP is the set of tolled edge after transformation
        # gamma is the transformation function
        
        # I_T_AV is the natural index (start at 1) set of the tolled edge before transformation
        # phi_3 is the map between the edge set and the index set
        
        # I_T_AP is the natural index (start at 1) set of the tolled edge after transformation
        # phi_4 is the map between the edge set and the index set
        
        # conv_2 is defined by phi_4( gamma( phi_3_inv( i ) ) ) for i in I_T_AV
        # conv_2 is useful to retrieve the tval of every tolled edge in the result file
        
        
        T_AV = sorted(filter(lambda x: x.toll, A_AV), key=g_gamma.edges_domain_index)
        phi_3 = Function({ej: i for i, ej in enumerate(T_AV, start=1)})
        phi_3_inv = Function({phi_3(ej):ej for ej in T_AV})
        #phi_3_inv = Function({i: ej for i, ej in enumerate(T_AV, start=1)})

        T_AP = sorted(filter(lambda x: x.toll, A_AP), key=g_gamma.edges_image_index)
        phi_4 = Function({ej: i for i, ej in enumerate(T_AP, start=1)})
        phi_4_inv = Function({phi_4(ej):ej for ej in T_AP})
        conversion2 = lambda i : phi_4(g_gamma(phi_3_inv(i)))
        
        
        # To get the flow of the tolled edge
        # I_AV ---phi_5---> I_T_AV
        phi_5 = Function({phi_1(ej):phi_3(ej) for ej in T_AV})
        # phi_5 is the direct map between the index of every edge to the index of tolled edge (before transformation)
        # phi_5 is a bridge between index of every edge and the subset of tolled edge (before transformation)
    
        
        
        class GammaReduce(Gamma):
    def __init__(self, gamma):
        
        # This class is meant to reduce parallel edge of the same type
        # In other word we have to do another gamma transformation
        
        # Preprocessing
        nodes = list(gamma.nodes_image_index)
        edges = list(gamma.edges_image_index)
        
        edge_partition = []
        origin_destination = {'tolled':{}, 'constant':{}}
        
        # Grouping edge based on their origin-destination pair
        for edge in edges:
            o,d = edge.src, edge.dst
            edge_type = 'tolled' if edge.toll else 'constant'
                
            if (o, d) in origin_destination[edge_type]:
                origin_destination[edge_type][(o,d)].append(edge)
            else:
                origin_destination[edge_type][(o,d)] = [edge, ]
                
        for edge_type in origin_destination:
            # new partition of constant edges
            for od, es in origin_destination[edge_type].items():
                if len(es) == 1:
                    edge_partition.append((es[0], ))
                else:
                    edge_partition.append(tuple(es))
        
        super().__init__(nodes, edges, edge_partition)
        self.summary()
        
        
        
        
        
        
        
        
        
        # going back to the original problem and change the cost of the tolled edge
        # accordingly to the result from the transformation
        for e in edges:
            if e in g_gamma.T_A:
                e.cost = opt_val_ap(g_gamma.phi_T_A(e))
        
        output_folder, filename = os.path.split(g_file)
        filename, _ = os.path.splitext(filename)
        filename = filename.replace('NPP', 'NPPR')
        
        # no partition here because we return to the original problem
        r_gamma = GammaNPP(nodes, edges, problems=problems)
        r_gamma.export(output_folder, filename)
        
        
        
        
        
        
        
        
        
if False:
    # Get a list of filenames in each folder
    id_to_files = {}

    # Iterate over the filenames in each folder and populate the dictionary
    for file in os.listdir(folder_result):
        file_id = int(file.split('-')[0])
        id_to_files[file_id] = [os.path.join(folder_result,file),]
        
    for file in os.listdir(folder_graph):
        file_id = int(file.split('-')[0])
        if not 'NPPR' in file:
            id_to_files[file_id].append(os.path.join(folder_graph, file))
        
    for file in os.listdir(folder_transformation):
        file_id = int(file.split('-')[0])
        id_to_files[file_id].append(os.path.join(folder_transformation, file))

    # original file
    assert id_to_files[0], "No original file"
    
    r0_file, g0_file, t0_file = id_to_files[0]
    with open(r0_file, 'rb') as f:
        result0 = json.load(f)
    tvals_0 = result0['tvals']
    flow_0_ = result0['flow']
    flow_0 = {k: flow_0_[str(k)] for k in sorted(map(int, flow_0_))}
        def sym(x,y):
        if x<y:
            return '<'
        elif x==y:
            return '='
        else:
            return '>'
            
    id_to_results = {}
    for i, (r_file, g_file, t_file) in enumerate(id_to_files.values(), start=0): 
        nodes, edges, problems = from_json(g0_file)
        id_to_results[i] = {}
        g_gamma = Gamma.from_transformation_pickle(nodes, edges, t_file)

        
        with open(r_file, 'rb') as f:
            result = json.load(f)
            
        tvals = result['tvals']
        flow_ = result['flow']
        flow = {k: flow_[str(k)] for k in sorted(map(int, flow_))}
        
        headers = [
                    'edge', 'opt. value', 'opt. flow',\
                    'γ(edge)', 'opt. value', 'opt. flow',\
                    'sym. value', 'sym. flow', 'rel. error value', 'rel. error flow'
                ]
        
        
        #T_A       ⊆     A  ---gamma---> A_      ⊇       T_A_      
        #|                |              |                 |
        #phi_T_A          phi_A         phi_A_            phi_T_A_
        #|                |              |                 |
        #V                V              V                 V
        #I_T_A --alpha--> I_A --conv_1--> I_A_  <---beta--- I_T_A_
        #||                                                    A
        #||                                                   ||
        #-----------------------conv_2------------------------
        
        # selon l'index I_T_AV
        edge_av = lambda i : g_gamma.alpha(i) 
        opt_val_av = lambda i : tvals_0[i-1] # correction index
        opt_flow_av = lambda i : flow_0[i] 
        
        edge_ap = lambda i : g_gamma.phi_A_(g_gamma(g_gamma.phi_T_A_inv(i)))
        opt_val_ap = lambda i : tvals[g_gamma.conv2(i)-1] # correction index
        opt_flow_ap = lambda i : flow[g_gamma.conv2(i)]
        
        # comparaison
        comp1 = lambda i: sym(opt_val_av(i), opt_val_ap(i))
        comp2 = lambda i: sym(opt_flow_av(i), opt_flow_ap(i))
        
        # Relative error tval and flow
        rel_error_t = lambda i : round(((opt_val_ap(i) - opt_val_av(i))/opt_val_av(i)), 3)*100 if opt_val_av(i)>0 else np.nan
        rel_error_f = lambda i : round(((opt_flow_ap(i) - opt_flow_av(i))/opt_flow_av(i)), 3)*100 if opt_flow_av(i)>0 else np.nan
        
        
        row_fun = (
                edge_av, opt_val_av, opt_flow_av,\
                edge_ap, opt_val_ap, opt_flow_ap,\
                comp1, comp2, rel_error_t, rel_error_f
                )
        row = lambda i: [fun(i) for fun in row_fun]
        data = [row(i) for i in g_gamma.phi_T_A.image]   
        print(tabulate(data, headers=headers))
        
        
        reduce_row_fun = (edge_av, edge_ap, opt_val_ap, opt_flow_ap, rel_error_t, rel_error_f)
        reduce_row = lambda i: [fun(i) for fun in reduce_row_fun]
        data = [reduce_row(i) for i in g_gamma.phi_T_A.image]
        id_to_results[i] = {
                            'edge':data, 
                            'obj_value':result['obj_value'],
                            'preprocess_time':result['preprocess_time'],
                            'solve_time':result['solve_time'],
                            }
        output_folder, filename = os.path.split(g_file)
        filename, _ = os.path.splitext(filename)
        filename = filename.replace('NPP', 'NPPR')
        

if False:
        
        if selected_option == 'option6':
            # testing
            # python src/main.py option6
            
        
        elif selected_option == 'option7':
            # plot testing
            # python src/main.py option7 --input_file ...
            input_file = args.input_file
            test(input_file)
            
            
        elif selected_option == 'option8':
            # result_processing
            before_graph_file = args.before_graph_file
            after_graph_result_file = args.after_graph_result_file
            transformation_file = args.transformation_file
            export_folder = args.export_folder
            filename = args.filename
            
            """
            python src/main.py option8\
            --before_graph_file 'other/result_processing/graph/000000-NPP-i30-01.json' \
            --after_graph_result_file 'other/result_processing/result/000002-NPP-i30-01-R.json' \
            --transformation_file 'other/result_processing/transformation/000002-T-i30-01.pkl' \
            --export_folder 'other/result_processing/result_process' \
            --filename '000002-NPP-i30-01-PR' \
            --verbose true
            """
            process_result_before_vs_after(before_graph_file, after_graph_result_file, transformation_file, export_folder, filename, verbose)
            
            
        elif selected_option == 'option9':
            """
            python src/main.py option9 \
             --result_file_before 'other/result_processing/result_process/000000-NPP-i30-01-PR.pkl' \
             --result_file_after 'other/result_processing/result_process/000002-NPP-i30-01-PR.pkl' \
             --verbose true
            """
            result_file_before = args.result_file_before
            result_file_after = args.result_file_after
            
            
        compare(result_file_before, result_file_after, verbose)
        
        
def option_6(subparsers_):
    name = 'option6'
    description = textwrap.dedent("Individual Problem Maker")
    help = 'unit_test.test.py'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
                                    
    parser_.add_argument('--num_partitions', type=int, default=100, help='Number of partitions to create (default: 100)')
    parser_.add_argument('--max_sub_length', type=int, default=3, help='Maximum length allowed of each element in the partition (default: 3)')
    parser_.add_argument('--input_file', type=str, required=True, help='Path to the input JSON file')
    parser_.add_argument('--export_folder_problems', type=str, required=True, help='Path to the export NPP json')
    parser_.add_argument('--export_folder_transformations', type=str, required=True, help='Path to the export transformation PKL')
    parser_.add_argument('--verbose', help='Print information')     
    
    
    
    
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
    
    
def option_8(subparsers_):
    name = 'option8'
    description = textwrap.dedent("Result processing")
    help = 'test.result_processing.py'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
                                
    subparsers__= parser_.add_subparsers(
                                        dest='selected_option_8',
                                        help='Option',
                                        required=True
                                    )
    def option_8_1(subparsers_):
        name = 'option8-1'
        description = textwrap.dedent("Before vs after result processing (individual)")
        help = 'test.result_processing.process_result_before_vs_after'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                        
        parser_.add_argument('--before_graph_file', type=str, help='Original graph json file')
        parser_.add_argument('--after_graph_result_file', type=str, help='transformed graph result file')
        parser_.add_argument('--transformation_file', type=str, help='transformation pkl file')
        parser_.add_argument('--export_folder_result', type=str, help='folder where the process result go')
        parser_.add_argument('--filename', type=str, help='filename of the process result')
        parser_.add_argument('--verbose', help='Print information')
        
    def option_8_2(subparsers_):
        name = 'option9'
        description = textwrap.dedent("stack_result_into_dataframe")
        help = 'test.result_processing.stack_result_into_dataframe'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--result_file_before', type=str, help='Original graph json file')
        parser_.add_argument('--result_file_after', type=str, help='transformed graph result file')
        parser_.add_argument('--verbose', help='Print information')
        
        
        
def export_transformation(self, directory, filename):
    # Check if the directory exists
    if not os.path.isdir(directory):
        logger.warning(f"The specified directory does not exist: {directory}")
        return

    # Check if the filename is not empty
    if not filename:
        logger.warning("The specified filename is empty")
        
    # Verify the extension
    if filename.endswith('.pkl'):
        filename = filename.rstrip('.pkl')

    output_file = os.path.join(directory, f"{filename}.pkl")

    # Check if the file already exists
    if os.path.isfile(output_file):
        logger.warning(f"The specified file already exists: {output_file}")
        return

    
    transformation = self.transformation_to_dict()
    
    # Write the list of sets to the file
    with open(output_file, 'wb') as f:
        pickle.dump(transformation, f)
    
    return output_file
        
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
    
    # import result from the after_graph_result_file
    with open(after_graph_result_file, 'rb') as f:
        result = json.load(f)
        
    # import transformation
    with open(transformations_file, 'r') as f:
        transformation = pickle.load(f)
        
    
        
    to_export = result_post_processing(
                                        nodes,
                                        edges,
                                        transformations['RA'],
                                        problems,
                                        result
                                        )
    
    
    # Write the list of sets to the file
    with open(output_file, 'wb') as f:
        pickle.dump(to_export, f)  # Fixed variable name here
    
    return output_file      
    
    
    
    
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
        
    if not os.path.isfile(export_meta_dataframe_file):
        logger.warning(f"The specified file does not exists: {export_meta_dataframe_file}")
        logger.warning(f"The following file is created : {export_meta_dataframe_file}")
        df2.to_pickle(export_meta_dataframe_file)
        
    else:
        df = pd.read_pickle(export_meta_dataframe_file)
        
        # verify if the result are already there
        if df['id'].isin([filename_after,]).any():
            logger.warning(f"Result already in meta_dataframe. Reference file: {filename_after}")
            logger.warning(f"Overwriting rows")
            df = df[df['id'] != filename_after]
            
        df = pd.concat([df, df2])
        df.to_pickle(export_meta_dataframe_file)
            
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

## Other result
    # comparaison
    #comp1 = lambda i: sym(opt_val_av(i), opt_val_ap(i))
    #comp2 = lambda i: sym(opt_flow_av(i), opt_flow_ap(i))
    
    # % relative error tval and flow
    #rel_error_t = lambda i : round(((opt_val_ap(i) - opt_val_av(i))/opt_val_av(i)), 3)*100 if opt_val_av(i)>0 else np.nan
    #rel_error_f = lambda i : round(((opt_flow_ap(i) - opt_flow_av(i))/opt_flow_av(i)), 3)*100 if opt_flow_av(i)>0 else np.nan
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
    
    
        # Batch command
    if batch_size>1:
        command_list = []
        split_list = [input_output_list[i:i + batch_size] for i in range(0, len(input_output_list), batch_size)]
        for j, sublist in enumerate(split_list, start=1):
            output_file = os.path.join(export_folder_grid, f"julia_batch_{j}.csv")
            
            with open(output_file, 'w') as f:
                f.write('input_file,output_file')
                f.write('\n')
                for (i, o) in sublist:
                    f.write(f"{i},{o}")
                    f.write('\n')
            
            logger.info(f"Batch {j} exported: {output_file}")
            command = f"julia src{os.sep}julia{os.sep}script.jl {output_file}"
            command_list.append(command)
            
            
            
            def option_3_3(subparsers_): 
        name = '3-3'
        description = textwrap.dedent("Julia commands batch")
        help = 'test.compute_grid.compute_grid_batch_julia'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder', type=str, help='input parent folder where are the original NPP json file')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='prepare parent folder to the export result of julia result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        parser_.add_argument('--batch_size', type=int, required=True, help='Batch size (number of problem in one batch)')
        
        
        
        
        
        
        
        
        
        
        
        
        
 # julia src/julia/script.jl './other/result_processing/graphs/d30-06-10/000089-NPP-d30-06-10.json' './other/result_processing/results/d30-06-10/000089-NPP-d30-06-10-RR.json'
    if False:
        # Grille de calcul pour la resolution
        command1 = """python src/python/main.py option3 3-3 \
        --input_folder './other/result_processing/graphs/d30-06-10' \
        --export_folder_grid './tmp' \
        --export_folder_results './other/result_processing/results/d30-06-10' \
        --output_filename 'compute_grid_julia_d30-06-10' \
        --batch_size 100
        """
        
        # Process la grille de calcul
        command2 = """python src/python/main.py option4 \
        --input_file './tmp/compute_grid_julia_d30-06-10.txt' \
        --n_core 1
        """
        
    if False:
        # Grille de calcul pour le raw result process 
        command3 =  """python src/python/main.py option3 3-5 \
        --input_folder_graphs './other/result_processing/graphs/d30-06-10' \
        --input_folder_transformations './other/result_processing/transformations/d30-06-10' \
        --input_folder_results './other/result_processing/results/d30-06-10' \
        --export_folder_grid './tmp' \
        --export_folder_results './other/result_processing/result_process/d30-06-10' \
        --output_filename 'compute_grid_process_result_d30-06-10' \
        --batch_size 100
        """
        # Process la grille de calcul
        command4 = """python src/python/main.py option4 \
        --input_file './tmp/compute_grid_process_result_d30-06-10.txt' \
        --n_core 1
        """
        for command in [command3, command4]:
            process = subprocess.Popen(command.strip(), shell=True, stdout=sys.stdout, stderr=subprocess.STDOUT)
            process.wait()
            
    if False:
        # Grille de calcul pour stacking
        command5 = """python src/python/main.py option3 3-7 \
        --input_folder_processed_results './other/result_processing/result_process/d30-06-10' \
        --export_folder_dataframes './tmp' \
        --export_folder_grid './tmp' \
        --output_filename 'compute_grid_stack_result_d30-06-10' \
        --batch_size 100
        """
        # Process la grille de calcul
        command6 = """python src/python/main.py option4 \
        --input_file './tmp/compute_grid_stack_result_d30-06-10.txt' \
        --n_core 1
        """
        for command in [command5, command6]:
            process = subprocess.Popen(command.strip(), shell=True, stdout=sys.stdout, stderr=subprocess.STDOUT)
            process.wait()
    
    
    filepath = './tmp/edge_dataframe.pkl'
    filepath = './tmp/meta_dataframe.pkl'
    df = pd.read_pickle(filepath)
    if False:
        # Check the correspondance between edge index of the original graph and reverse edge index from the transform graph
        # Compare if the columns are equal element-wise
        equal_columns = df['edge'] == df['edge_ref']
        # Check if all elements are True (i.e., the columns are always equal)
        all_equal = equal_columns.all()
        print("The columns are always equal:", all_equal)
        
        print(df)
        means_opt_value = []
        means_opt_flow = []
        for edge in df['edge'].unique():
            group_df = df[df['edge']==edge].dropna()
            group_statistics = group_df[['opt. value', 'opt. flow', '(opt. value)', '(opt. flow)']].describe()
            #print(f"\nStatistics for group '{edge}':")
            #print(group_statistics)
            means_opt_value.append(group_df['opt. value'].mean() - group_df['(opt. value)'].mean())
            means_opt_flow.append(group_df['opt. flow'].mean() - group_df['(opt. flow)'].mean())
        
        plt.hist(means_opt_value, bins=30)
        plt.xlabel('Value')
        plt.ylabel('Frequency Density')
        plt.title('Distribution of the mean difference between opt. value and mean{(opt. value)}')
        plt.grid(True)
        plt.savefig('./figure/mean_difference_opt_value_distribution.pdf')
        plt.close()
        
        
        plt.hist(means_opt_flow, bins=30)
        plt.xlabel('Value')
        plt.ylabel('Frequency Density')
        plt.title('Distribution of the mean difference between opt. flow and mean{(opt. flow)}')
        plt.grid(True)
        plt.savefig('./figure/mean_difference_opt_flow_distribution.pdf')
        plt.close()
    
    
    
    
    
    
    
    matching_rows = df[df['file'].str.contains('000000')]    
    original_problem_data = matching_rows.iloc[0].to_dict()
    #('file', '000000-NPP-d30-06-10-PR')
    #('objective', 288848.0017616278)
    #('solve time', 101.974749989)
    #('preprocess time', 0.946727697)
    #('number vertex', 176)
    #('number edge', 36)
    #('rewind optimal', 288848.0)
    #('rewind time', 0.05017518997192383)
    #('c.-f.1', 1.0)
    #('c.-f.2', 1.0)
    #('c.-f.3', 1.0)
    #('c.-f.4', 1.0)
    #('c.-f.5', 2.0)
    #('c.-f.6', 2.0)
    #('c.-f.7', 2.0)
    #('c.-f.8', 2.0)
    #('c.-f.9', 4.0)

    if True:
        # setting
        ticks_font_size  = 16
        label_font_size  = 22
        title_font_size  = 26
        legend_font_size = 18
        
        fig_x_size = 15
        fig_y_size = 15
        # graphique
        df['optimal_ratio'] = df['objective']/original_problem_data['objective']         # x
        df['edge_ratio'] = df['number edge']/original_problem_data['number edge']        # y
        df['vertex_ratio'] = df['number vertex']/original_problem_data['number vertex']  # y
        
        # Determine the ranges automatically using pd.cut
        bins = pd.cut(df['objective'], bins=5)
        categories = bins.astype(str)  # Convert bins to strings
        # Assign the categories directly
        df['Category'] = categories

        
        # kdeplot optimal_ratio vs vertex_ratio
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        kde_plot = sns.kdeplot(df, x='optimal_ratio', y='vertex_ratio', fill=True, alpha=.75, cbar=True, cmap="rocket_r")
        plt.xlabel('Optimal Ratio', fontsize=label_font_size)
        plt.ylabel('Vertex Ratio', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Optimal Ratio vs. Vertex Ratio (count density)', fontsize=title_font_size)
        plt.savefig('./figure/optimal_ratio_vs_vertex_ratio.pdf',  bbox_inches='tight')
        plt.close()
        
        #kdeplot optimal_ratio vs edge_ratio
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        kde_plot = sns.kdeplot(df, x='optimal_ratio', y='edge_ratio', fill=True, alpha=.75, cbar=True, cmap="rocket_r")
        plt.xlabel('Optimal Ratio', fontsize=label_font_size)
        plt.ylabel('Edge Ratio', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Optimal Ratio vs. Edge Ratio (count density)', fontsize=title_font_size)
        plt.savefig('./figure/optimal_ratio_vs_edge_ratio.pdf',  bbox_inches='tight')
        plt.close()
        
        # kdeplot optimal_ratio vs edge_ratio
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        kde_plot = sns.kdeplot(df, x='vertex_ratio', y='edge_ratio', fill=True, alpha=.75, cbar=True, cmap="rocket_r")
        plt.xlabel('Vertex Ratio', fontsize=label_font_size)
        plt.ylabel('Edge Ratio', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Vertex Ratio vs. Edge Ratio (count density)', fontsize=title_font_size)
        plt.savefig('./figure/vertex_ratio_vs_edge_ratio.pdf',  bbox_inches='tight')
        plt.close()
        
        
        # kdeplot optimal_ratio vs edge_ratio vs range
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        kde_plot = sns.kdeplot(df, x='vertex_ratio', y='edge_ratio', fill=True, hue='Category', alpha=.25, palette="mako", legend=True)
        plt.xlabel('Vertex Ratio', fontsize=label_font_size)
        plt.ylabel('Edge Ratio', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Vertex Ratio vs. Edge Ratio (count density)', fontsize=title_font_size)
        plt.savefig('./figure/vertex_ratio_vs_edge_ratio_hue_category.pdf',  bbox_inches='tight')
        plt.close()
        
        
        






        # Objective distribution
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        plt.hist(df['objective'], bins=25)
        plt.axvline(x=original_problem_data['objective'], color='red', linestyle='--')
        plt.xlabel('objective', fontsize=label_font_size)
        plt.ylabel('Frequency', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Distribution of objective in the transformed space', fontsize=title_font_size)
        plt.savefig('./figure/objective_distribution_after.pdf',  bbox_inches='tight')
        plt.close()
        
        # Rewind objective distribution
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        plt.hist(df['rewind optimal'], bins=25)
        plt.axvline(x=original_problem_data['rewind optimal'], color='red', linestyle='--')
        plt.xlabel('objective', fontsize=label_font_size)
        plt.ylabel('Frequency', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Distribution of objective rewind (option distributivity)', fontsize=title_font_size)
        plt.savefig('./figure/objective_distribution_before_rewind_after.pdf',  bbox_inches='tight')
        plt.close()
        
        
        
        
        
        # Solve time in transformed space distribution
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        plt.hist(df['solve time'] + df['preprocess time'], bins=50)
        plt.axvline(x=original_problem_data['solve time'] + original_problem_data['preprocess time'], color='red', linestyle='--')
        plt.xlabel('Solving time (sec)', fontsize=label_font_size)
        plt.ylabel('Frequency', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Distribution of the solving time in the transformed space', fontsize=title_font_size)
        plt.savefig('./figure/solve_time_distribution_transformed_space.pdf',  bbox_inches='tight')
        plt.close()
        
        # Solve time from the transformed space to original space distribution
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        plt.hist(df['rewind time'], bins=50)
        plt.axvline(x=original_problem_data['rewind time'], color='red', linestyle='--')
        plt.xlabel('Solving time (sec)', fontsize=label_font_size)
        plt.ylabel('Frequency', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Distribution of the rewind evaluation time', fontsize=title_font_size)
        plt.savefig('./figure/solve_time_distribution_rewind.pdf',  bbox_inches='tight')
        plt.close()
        
        

        
        # Select the two variables of interest
        var1 = 'optimal_ratio'
        var2 = 'vertex_ratio'

        # Calculate the correlation matrix for the two variables
        corr_matrix = df[[var1, var2]].corr()

        # Create the heatmap
        sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')

        # Add labels and title
        plt.xlabel('')
        plt.ylabel('')
        plt.title(f'Correlation Heatmap between {var1} and {var2}')

        # Save the figure
        plt.savefig(f'./figure/correlation_heatmap_{var1}_{var2}.pdf')
        plt.close()
        
        # Select the two variables of interest
        var1 = 'optimal_ratio'
        var2 = 'edge_ratio'

        # Calculate the correlation matrix for the two variables
        corr_matrix = df[[var1, var2]].corr()

        # Create the heatmap
        sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')

        # Add labels and title
        plt.xlabel('')
        plt.ylabel('')
        plt.title(f'Correlation Heatmap between {var1} and {var2}')

        # Save the figure
        plt.savefig(f'./figure/correlation_heatmap_{var1}_{var2}.pdf')
        plt.close()

    
    
# 1) Generer des probleme
#python src/python/main.py option5 5-1 \
# --num_partitions 10000 \
# --max_sub_length 2 \
# --input_file './data/from_github/problems/progressive-delaunay/d30-06-10.json' \
# --export_folder_problems './other/result_processing/graphs/d30-06-10' \
# --export_folder_transformations './other/result_processing/transformations/d30-06-10' \
# --verbose true

# 2) Generer la grille de calcul julia en batch de 500
# python src/python/main.py option3 3-3 \
# --input_folder './other/result_processing/graphs/d30-06-10' \
# --export_folder_grid './tmp' \
# --export_folder_results './other/result_processing/results/d30-06-10' \
# --output_filename 'compute_grid_julia_500_d30-06-10' \
# --batch_size 500 \
# --verbose true

# 3) Process la grille de calcul de julia
#python src/python/main.py option4 --input_file './tmp/compute_grid_julia_500_d30-06-10.txt' --n_core 1 --verbose true


# 3) Genere la grille de calcul du result processing et les batchs
#python src/python/main.py option3 3-5 \
#--input_folder_graphs './other/result_processing/graphs/d30-06-10' \
#--input_folder_transformations './other/result_processing/transformations/d30-06-10' \
#--input_folder_results './other/result_processing/results/d30-06-10' \
#--export_folder_grid './tmp' \
#--export_folder_results './other/result_processing/result_process/d30-06-10' \
#--output_filename 'compute_grid_process_result_d30-06-10' \
#--batch_size 100 \
#--verbose true

# 4) Process 
#python src/python/main.py option4 --input_file './tmp/compute_grid_process_result_d30-06-10.txt' --n_core 1 --verbose false

# 5) Generer la grille de calcul de stacking en dataframe batch et les batchs
#python src/python/main.py option3 3-7 \
#    --input_folder_processed_results './other/result_processing/result_process/d30-06-10' \
#    --export_folder_dataframes './tmp' \
#    --export_folder_grid './tmp' \
#    --output_filename 'compute_grid_stack_result' \
#    --batch_size 100 \
#    --verbose false


# 6) Process
#python src/python/main.py option4 --input_file './tmp/compute_grid_stack_result.txt' --n_core 1 --verbose false


        
    def option_3_4(subparsers_): 
        name = '3-4'
        description = textwrap.dedent("process result commands")
        help = 'test.compute_grid.compute_grid_process_result_before_vs_after'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder_graphs', type=str, help='input parent folder where are the NPP json file')
        parser_.add_argument('--input_folder_transformations', type=str, help='input parent folder where are the transformation pkl file')
        parser_.add_argument('--input_folder_results', type=str, help='input parent folder where are the julia result json file')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='parent folder for processed result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        
        
    def option_3_5(subparsers_): 
        name = '3-5'
        description = textwrap.dedent("process result commands batch")
        help = 'test.compute_grid.compute_grid_process_result_before_vs_after'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder_graphs', type=str, help='input parent folder where are the NPP json file')
        parser_.add_argument('--input_folder_transformations', type=str, help='input parent folder where are the transformation pkl file')
        parser_.add_argument('--input_folder_results', type=str, help='input parent folder where are the julia result json file')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='parent folder for processed result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        parser_.add_argument('--batch_size', type=int, required=True, help='Batch size')
        
    def option_3_6(subparsers_): 
        name = '3-6'
        description = textwrap.dedent("process stacking results commands")
        help = 'test.compute_grid.stack_result_into_dataframe'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder_processed_results', type=str, help='Processed result pkl file path')
        parser_.add_argument('--export_folder_dataframes', type=str, help='Parent folder to export dataframes')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        
        
    def option_3_7(subparsers_): 
        name = '3-7'
        description = textwrap.dedent("process stacking results commands batch")
        help = 'test.compute_grid.stack_result_into_dataframe'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder_processed_results', type=str, help='Processed result pkl file path')
        parser_.add_argument('--export_folder_dataframes', type=str, help='Parent folder to export dataframes')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        parser_.add_argument('--batch_size', type=int, required=True, help='Batch size')

def option_5_2(subparsers_): 
        name = '5-2'
        description = textwrap.dedent("Process raw result")
        help = 'test.result_processing.process_result_before_vs_after'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
        parser_.add_argument('--before_graph_file', type=str, help='NPP json path of the problem before transformation')
        parser_.add_argument('--after_graph_result_file', type=str, help='NPP json path after transformation')
        parser_.add_argument('--transformation_file', type=str, help='transformation pkl file path')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='folder to export the processed results')
        parser_.add_argument('--output_filename', type=str, required=True, help='processed result filename')
        
    def option_5_3(subparsers_): 
        name = '5-3'
        description = textwrap.dedent("Process raw result batch")
        help = 'test.result_processing.process_result_before_vs_after_batch'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
        parser_.add_argument('--input_file', type=str, help='batch file')
        
    def option_5_4(subparsers_): 
        name = '5-4'
        description = textwrap.dedent("Stacking result")
        help = 'test.result_processing.stack_result_into_dataframe'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        
        parser_.add_argument('--input_process_result_file_before', type=str, help='File path to json raw result before transformation')
        parser_.add_argument('--input_process_result_file_after', type=str, help='File path to json raw result after transformation')
        parser_.add_argument('--export_edge_dataframe_file', type=str, help='File path to pkl tolled edge dataframe')
        parser_.add_argument('--export_meta_dataframe_file', type=str, required=True, help='File path to pkl meta dataframe')
        
        
    def option_5_5(subparsers_): 
        name = '5-5'
        description = textwrap.dedent("Stacking result batch")
        help = 'test.result_processing.stack_result_into_dataframe_batch'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
        parser_.add_argument('--input_file', type=str, help='batch file')

    option_5_1(subparsers__)
    option_5_2(subparsers__)
    option_5_3(subparsers__)
    option_5_4(subparsers__)
    option_5_5(subparsers__)
    
    
    elif selected_option_3 in ['3-4', '3-5']:
        
            input_folder_graphs = args.input_folder_graphs
            input_folder_transformations = args.input_folder_transformations
            input_folder_results = args.input_folder_results
            export_folder_grid = args.export_folder_grid
            export_folder_results = args.export_folder_results
            output_filename = args.output_filename
            batch_size = args.batch_size if args.batch_size else 1 
            
            compute_grid_process_result_before_vs_after(
                                                            input_folder_graphs,
                                                            input_folder_transformations,
                                                            input_folder_results,
                                                            export_folder_grid,
                                                            export_folder_results,
                                                            output_filename,
                                                            batch_size,
                                                        )
                                                    
                                                    
        elif selected_option_3 in ['3-6', '3-7']:
            input_folder_processed_results=args.input_folder_processed_results
            export_folder_dataframes = args.export_folder_dataframes
            export_folder_grid = args.export_folder_grid
            output_filename = args.output_filename
            batch_size = args.batch_size if args.batch_size else 1
            
            compute_grid_stack_result_into_dataframe(
                                                        input_folder_processed_results,
                                                        export_folder_dataframes,
                                                        export_folder_grid,
                                                        output_filename,
                                                        batch_size,
                                                    )
                
                
                elif selected_option_5 == '5-2':
            before_graph_file = args.before_graph_file
            after_graph_result_file = args.after_graph_result_file
            transformation_file = args.transformation_file
            export_directory_results = args.export_directory_results
            output_filename = args.output_filename
            
            process_result_before_vs_after(
                                            before_graph_file,
                                            after_graph_result_file,
                                            transformation_file,
                                            export_directory_results,
                                            output_filename,
                                        )
                                        
        elif selected_option_5 == '5-3':
            input_file = args.input_file
            
            process_result_before_vs_after_batch(
                                            input_file,
                                        )
                                        
        elif selected_option_5 == '5-4':
            input_process_result_file_before = args.input_process_result_file_before
            input_process_result_file_after = args.input_process_result_file_after
            export_edge_dataframe_file = args.export_edge_dataframe_file
            export_meta_dataframe_file = args.export_meta_dataframe_file
            
            stack_result_into_dataframe(
                                            input_process_result_file_before,
                                            input_process_result_file_after,
                                            export_edge_dataframe_file,
                                            export_meta_dataframe_file,
                                        )
        elif selected_option_5 == '5-5':
            input_file = args.input_file
            
            stack_result_into_dataframe_batch(
                                            input_file,
                                        )
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        


for i in {1..14}; do
  filename="./data/generated/TO_COMPUTE/$(printf "%06d" $i)-super_batch.sh"
  echo "$filename"
  sbatch "$filename"
done

#python src/python/main.py option4 --input_file './data/generated/compute_grid_problem_generation_o45-04.sh' --n_core 1
#python src/python/main.py option4 --input_file './data/generated/compute_grid_uniform_batches_o45-04.sh' --n_core 1


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
        
        
def processing(g_gamma:GammaNPP, result):

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
    headers = ('edge', '(edge)', '(opt. value)', '(opt. flow)')
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
                'min_sub_length':,
                'max_sub_length':,
                'number_not_trivial_class':,
                'H4':
                #'n_simple_path_for_od':0,
                }
                    
                    
                    
def result_post_process(
            original_graph:GammaNPP,
            transformation,
            results,
            ):
            
    """
    Process the results of a graph transformation before and after the transformation.
    Args:
        original_graph    : The file path of the graph before the transformation.
        transformation    : The file path of the transformation file.
        results           : The file path of the graph after the transformation.
    """   
    
                    
    output_file = os.path.join(export_folder, output_filename)
            
    
    
    # import original
    nodes, edges, problems = npp_from_json(original_graph_file)
    
    if transformations_file.endswith('.pkl'):
        # MULTIPLE CASE
        
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
        # SINGLE CASE
        with open(transformations_file, 'r') as f:
            transformations = json.load(f)
            
        g_gamma = GammaNPP.from_transformation(nodes, edges, transformations, problems=problems) 
        to_export = {**processing(g_gamma, result), **{'id': r_name}}
    with open(output_file, 'wb') as f:
        pickle.dump(to_export, f)
    
    return output_file
    
    


def compute_grid_process_result_before_vs_after(
                                                input_directory_graphs:str='',
                                                input_directory_transformations:str='',
                                                input_directory_results:str='',
                                                export_directory_grid:str='',
                                                export_directory_results:str='',
                                                output_filename:str='',
                                                batch_size:int=1,
                                            ):
    # Logic for file and directory existence                   
    # input_directory_graphs ? no -> return error  
    # input_directory_transformations ? no -> return error          
    # input_directory_results ? no -> return error
    # export_directory_grid ? no -> create directory
    # export_directory_results ? no -> create directory
    
    command_list = []
    input_output_list = []
    for root, dirs, files in os.walk(input_directory_graphs):
        for filename in files:
            if filename.endswith(".json"):
                problem_path = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subdirectory = root.replace(input_directory_graphs, '').split(os.sep)
                
                number = base_name.split('-')[0]          
                input_g_file = os.path.join(root,filename.replace(number,'000000')) # original graph problem
                input_t_file = os.path.join(input_directory_transformations, *subdirectory, f"{base_name}-T.pkl") # transformation file
                input_r_file = os.path.join(input_directory_results, *subdirectory, f"{base_name}-RR{ext}") # raw result file of the transformed graph problem
                
                tmp_bool_1 = os.path.isfile(input_t_file)
                tmp_bool_2 = os.path.isfile(input_r_file)
                    
                #if not tmp_bool_1 or not tmp_bool_2:
                #    logger.warning(f"The problem file is not compatible: {problem_path}")
                if not tmp_bool_1:
                    logger.warning(f"The transformation file does not exists: {input_t_file}")
                if not tmp_bool_2:
                    logger.warning(f"The result file does not exists: {input_r_file}")
                
                if tmp_bool_1 and tmp_bool_2:
                    output_directory_results = os.path.join(export_directory_results, *subdirectory)
                    
                    if not os.path.exists(output_directory_results):
                        os.makedirs(output_directory_results)
                        logger.info(f"directory created : {output_directory_results}")
                    
                    output_r_file = f"{base_name}-PR.pkl"
                    command = f"python src/python/main.py option5 5-2 --before_graph_file {input_g_file} --after_graph_result_file {input_r_file} --transformation_file {input_t_file} --export_directory {output_directory_results} --output_filename {output_r_file}"
                    command_list.append(command)
                    
                    grtr = (input_g_file, input_r_file, input_t_file,output_directory_results, output_r_file)
                    input_output_list.append(grtr)
                    

    # Batch command
    if batch_size > 1 :
        command_list = []
        split_list = [input_output_list[i:i + batch_size] for i in range(0, len(input_output_list), batch_size)]
        for j, sublist in enumerate(split_list, start=1):
            output_file = os.path.join(export_directory_grid, f"result_process_batch_{j}.csv")
            
            with open(output_file, 'w') as f:
                f.write('before_graph_file,transformation_file,after_graph_result_file,export_directory,output_filename')
                f.write('\n')
                for (i, t, r, x, rr) in sublist:
                    f.write(f"{i},{t},{r},{x},{rr}")
                    f.write('\n')
            
            logger.info(f"Batch {j} exported: {output_file}")
            command = f"python src{os.sep}python{os.sep}main.py option5 5-3 --input_file {output_file}"
            command_list.append(command)
    
    
    # Exporting computing grid
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_directory_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    logger.info(f"Compute grid exported : {output_file}")
    
    return output_file
    
    
    
    

def compute_grid_stack_result_into_dataframe(
                                            input_directory_processed_results:str='',
                                            export_directory_dataframes:str='',
                                            export_directory_grid:str='',
                                            output_filename:str='',
                                            batch_size:int=1,
                                        ):
    command_list = []
    input_output_list = []
    for root, dirs, files in os.walk(input_directory_processed_results):
        for filename in files:
            if filename.endswith(".pkl"):
                
                processed_result_after_path = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subdirectory = root.replace(input_directory_processed_results, '').split(os.sep)
                
                number = base_name.split('-')[0]
                processed_result_path_before = os.path.join(root,filename.replace(number, '000000')) # original graph problem
                
                if not os.path.exists(export_directory_dataframes):
                    os.makedirs(export_directory_dataframes)
                    logger.info(f"directory created: {export_directory_dataframes}")

                export_edge_dataframe_file = os.path.join(export_directory_dataframes, "edge_dataframe.pkl")
                export_meta_dataframe_file = os.path.join(export_directory_dataframes, "meta_dataframe.pkl")
                
                command = f"python src/python/main.py option5 5-3 --input_process_result_file_before {processed_result_path_before} --input_process_result_file_after {processed_result_after_path} --export_edge_dataframe_file {export_edge_dataframe_file} --export_meta_dataframe_file {export_meta_dataframe_file}"
                command_list.append(command)
                input_output_list.append((
                                            processed_result_path_before,
                                            processed_result_after_path,
                                            export_edge_dataframe_file,
                                            export_meta_dataframe_file,
                                            ))
    ###
    if batch_size > 1:
        command_list = []
        split_list = [input_output_list[i:i + batch_size] for i in range(0, len(input_output_list), batch_size)]
        for i, sublist in enumerate(split_list, start=1):
            output_file = os.path.join(export_directory_grid, f"result_process_batch_{i}.csv")
            
            with open(output_file, 'w') as f:
                f.write('input_process_result_file_before,input_process_result_file_after,export_edge_dataframe_file,export_meta_dataframe_file')
                f.write('\n')
                for (iprfb, iprfa, eed, emd) in sublist:
                    f.write(f"{iprfb},{iprfa},{eed},{emd}")
                    f.write('\n')
            
            logger.info(f"Batch {i} exported: {output_file}")
            command = f"python src{os.sep}python{os.sep}main.py option5 5-5 --input_file {output_file}"
            command_list.append(command)
    ###       
    if not output_filename.endswith('.txt'):
        output_filename += '.txt'
        
    output_file = os.path.join(export_directory_grid, output_filename)
    with open(output_file, 'w') as f:
        for command in command_list:
            f.write(command)
            f.write('\n')
            
    logger.info(f"Compute grid exported : {output_file}")
    
    return output_file
    
    
    
    
    original_npp_file = './data/generated/graphs/progressive-2/o45-04/000000-NPP-o45-04.json'
    original_npp_transformation = './data/generated/transformations/progressive-2/o45-04/000000-NPP-o45-04.json'
    original_npp_result = './data/generated/results/progressive-2/o45-04/000000-NPP-o45-04.json'
    results_directory = './data/generated/results/progressive-2/o45-04/'
    transformations_directory = './data/generated/transformations/progressive-2/o45-04/'
    
    nodes, edges, problems = npp_from_json(original_npp_file)
    process_data = {}
    keys = ['sub_id', 'min_sub_length', 'max_sub_length', 'number_not_trivial_class', 'H4', 'npp_id']
    
    # import original probleme result
    with open(original_npp_result, 'r') as f:
        results_data = json.load(f)
        
    with open(original_npp_transformation, 'r') as f:
        # trivial only for testing shortest path
        transformations_data = json.load(f)
    
    id_ = results_data['id']
    result = results_data
    transformation = transformations_data
    sub_id, *npp_id = id_.split('-')
    values = [sub_id, 0,0,0,0,'-'.join(npp_id)]
    paramaters = dict(zip(keys, values))
    process_data[id_] = post_process_result(nodes, edges, problems, transformation, result, **paramaters)
    
    for filename in os.listdir(results_directory):
    
        if filename.endswith('.json') and not filename.startswith('%06d' % 0):
            results_file = os.path.join(results_directory, filename)
            transformations_file = os.path.join(transformations_directory, filename.replace('.json', '.pkl'))
            
            with open(results_file, 'r') as f:
                results_data = json.load(f)
                
            with open(transformations_file, 'rb') as f:
                transformations_data = pickle.load(f)
            
            for result in tqdm(results_data, desc=f'Process {filename}'): 
                id_ = result['id']
                transformation = transformations_data[id_]
                
                sub_id, min_sub_length, max_sub_length, number_not_trivial_class, H4, *npp_id = id_.split('-')
                values = [sub_id, min_sub_length, max_sub_length, number_not_trivial_class, H4, '-'.join(npp_id)]
                paramaters = dict(zip(keys, values))
                process_data[id_] = post_process_result(nodes, edges, problems, transformation, result, **paramaters)
    
    return process_data





        
    original_npp_file = './data/generated/graphs/progressive-2/o45-04/000000-NPP-o45-04.json'
    original_npp_transformation = './data/generated/transformations/progressive-2/o45-04/000000-NPP-o45-04.json'
    original_npp_result = './data/generated/results/progressive-2/o45-04/000000-NPP-o45-04.json'
    results_directory = './data/generated/results/progressive-2/o45-04/'
    transformations_directory = './data/generated/transformations/progressive-2/o45-04/'
    
    nodes, edges, problems = npp_from_json(original_npp_file)
    process_data = {}
    keys = ['sub_id', 'min_sub_length', 'max_sub_length', 'number_not_trivial_class', 'H4', 'npp_id']
    
    # import original probleme result
    with open(original_npp_result, 'r') as f:
        results_data = json.load(f)
        
    with open(original_npp_transformation, 'r') as f:
        # trivial only for testing shortest path
        transformations_data = json.load(f)
    
    id_ = results_data['id']
    result = results_data
    transformation = transformations_data
    sub_id, *npp_id = id_.split('-')
    values = [sub_id, 0,0,0,0,'-'.join(npp_id)]
    paramaters = dict(zip(keys, values))
    process_data[id_] = post_process_result(nodes, edges, problems, transformation, result, **paramaters)
    
    for filename in os.listdir(results_directory):
    
        if filename.endswith('.json') and not filename.startswith('%06d' % 0):
            results_file = os.path.join(results_directory, filename)
            transformations_file = os.path.join(transformations_directory, filename.replace('.json', '.pkl'))
            
            with open(results_file, 'r') as f:
                results_data = json.load(f)
                
            with open(transformations_file, 'rb') as f:
                transformations_data = pickle.load(f)
            
            for result in tqdm(results_data, desc=f'Process {filename}'): 
                id_ = result['id']
                transformation = transformations_data[id_]
                
                sub_id, min_sub_length, max_sub_length, number_not_trivial_class, H4, *npp_id = id_.split('-')
                values = [sub_id, min_sub_length, max_sub_length, number_not_trivial_class, H4, '-'.join(npp_id)]
                paramaters = dict(zip(keys, values))
                process_data[id_] = post_process_result(nodes, edges, problems, transformation, result, **paramaters)
    
    return process_data
    
    
    
    @timing_decorator
def main(
        num_partitions:int,
        min_sub_length:int,
        max_sub_length:int,
        number_not_trivial_class:int,
        H4:bool=False,
        batch_size:int=1000,
        input_file:str='',
        export_directory_problems:str='',
        export_directory_transformations:str='',
    ):
    
    """
    This function partitions a graph into subsets and exports the resulting transformations and problems.

    Parameters:
    num_partitions (int): The number of partitions to create. Default is 1000.
    min_sub_length (int): The minimum length of the element in a partition. Default is 3.
    max_sub_length (int): The maximum length of the element in a partition. Default is 3.
    number_not_trivial_class (int): The number of none trivial equivalence class in partition. Default is 3.
    H4 (bool): Applied the local hypothesis for making the partition. Default is False.
    batch_size (int): The number of problem in one file. Default is 1000.
    input_file (str): The path to the input JSON file containing the graph data. Default is an empty string.
    export_directory (str): The path to the output directory where the results will be saved. Default is an empty string.
    """
    
    # Check if the file does not exists
    if not os.path.isfile(input_file):
        logger.warning(f"The specified file does not exists: {input_file}")
        return
        
    # Check if the export_directory exists
    if not os.path.isdir(export_directory_problems):
        logger.warning(f"The specified directory does not exist: {export_directory_problems}")
        os.makedirs(export_directory_problems)
        logger.info(f"The specified directory has been created: {export_directory_problems}")
        
    # Check if the export_directory exists
    if not os.path.isdir(export_directory_transformations):
        logger.warning(f"The specified directory does not exist: {export_directory_transformations}")
        os.makedirs(export_directory_transformations)
        logger.info(f"The specified directory has been created: {export_directory_transformations}")
    
    
    base_filename, file_extension = os.path.splitext(os.path.basename(input_file))
    
    # Import JSON
    # Extraction Graph (nodes, edges)
    # Extraction Problem
    nodes, edges, problems = npp_from_json(input_file)
    
    def preprocessing():
        for edge in edges:
            # every tolled arc starting cost is 1
            if edge.toll:
                edge.cost = max(int(round(edge.cost, 0)), 1)
                
            # only integer cost
            else:
                edge.cost = max(int(round(edge.cost, 0)), 1)
           
        # Problems structures
        #[...,
        #    {
        #        "orig": 1,
        #        "dest": 4,
        #        "demand": 1.0
        #    },... 
        #]
        # only integer demand
        for problem in problems:
            problem['demand'] = max(int(round(problem['demand'], 0)), 1)
            
    preprocessing()
    
    # Compatibility graph extraction
    compatibility_graph = make_rules(edges, H4)
    if all(map(lambda x: 0<=len(x)<=1, compatibility_graph.values())):
        logger.warning(f"Only the trivial partition is feasible")
        return
        
    logger.debug(f"Number of tolled edge : {len(compatibility_graph)}")
    minimal = all(map(lambda v: len(v)>1, compatibility_graph.values()))
    
    if not minimal:
        logger.debug("Rules not minimal")
        compatibility_graph = {k:v for k,v in compatibility_graph.items() if len(v)>1}
        
    compatibility_graph = Rules(compatibility_graph)
    difference = set(edges) - set(compatibility_graph)
    singleton = list(map(lambda x: (x,), difference))
    
    # Random Partition
    partitions = compatibility_graph.random_partition(
                                                        num_partitions,
                                                        min_sub_length,
                                                        max_sub_length,
                                                        number_not_trivial_class,
                                                        )
    if not partitions:
        logger.warning('No partition have been found')
        logger.debug(f'Parameter:\nnum_partitions: {num_partitions}\nmin_sub_length: {min_sub_length}\nmax_sub_length:{max_sub_length}\nnumber_not_trivial_class:{number_not_trivial_class}')
        return
    
    for partition in partitions:
        logger.debug(list(map(lambda x: list(map(str, x)), partition)))
        
    # trivial partition first
    trivial_partition = set_of_frozenset([(e, ) for e in edges])
    if trivial_partition in partitions:
        partitions.remove(trivial_partition)
    partitions.insert(0, trivial_partition)
    
    logger.debug(f"number of partition found: {len(partitions)}")
    transformations_array = []
    problems_array = []
    for i, partition in enumerate(partitions, start=0):
    
        if i != 0:
            partition = list(map(tuple, partition))
            partition += singleton
        
        if (len(edges) != sum(map(len, partition))):
            logger.warning('Not a partition')
            logger.debug(list(map(str, set(edges) - set(chain.from_iterable(partition)))))
            return
            
            
        # Gamma
        g_gamma = GammaNPP(nodes, edges, partition, problems)
        number = "%06d" % i
        #logger.debug(number)
        filename = f"{number}-NPP-{base_filename}"
        id_ = f"{number}-{min_sub_length}-{max_sub_length}-{number_not_trivial_class}-{int(H4)}-NPP-{base_filename}"
        if batch_size == 1 or i == 0:
            
            # indivudual export
            # Export NPP in JSON
            problem_file = to_json(g_gamma.image_problem_to_dict(), export_directory_problems, filename)
            tranformation_file = to_json(g_gamma.transformation_to_dict(), export_directory_transformations, filename)
            
            logger.info(f'NPP JSON file created : {problem_file}')
            logger.info(f'Transformation JSON file created : {tranformation_file}')
        
        else:
            if (i%(batch_size+1))==0 or i==1:
                transformations_array.append([])
                problems_array.append([])
                
            logger.debug(f"created problem id_ {id_}")
            
            problems_array[-1].append(
                                    (id_, g_gamma.image_problem_to_dict())
                                )
            
            transformations_array[-1].append(
                                        (id_, g_gamma.transformation_to_dict())
                                    )
    
    if batch_size > 1:
        for j, (p_batch, t_batch) in enumerate(zip(problems_array, transformations_array), start=1):
            # Export problems
            prefix = f"{'%06d' % len(p_batch)}-{min_sub_length}-{max_sub_length}-{number_not_trivial_class}-{int(H4)}"
            filename = f"{'%06d' % j}-{prefix}-NPP-{base_filename}.pkl"
            problems_file = os.path.join(export_directory_problems, filename)
            json_compression(p_batch, problems_file)
            
            # Export transformation
            filename = f"{'%06d' % j}-{prefix}-NPP-{base_filename}.pkl"
            transformations_file = os.path.join(export_directory_transformations, filename)
            json_compression(t_batch, transformations_file)
            
            logger.info(f'NPP batch PKL file created : {problems_file}')
            logger.info(f'Transformation batch PKL file created : {transformations_file}')
            
  
  
def distribute_tuples(
                    tuples_list:list,
                    min_element:int=50,
                    max_element:int=110
                    ) -> list:
    # list of tuple of the form (str, integer) 1<=integer<=100
    tuples_list.sort(key=lambda x: x[1], reverse=True)
    groups = []
    current_group = []
    current_sum = 0

    # Stage 1: Distribute tuples to groups with sum between min_element and max_element
    for t in tuples_list:
        if current_sum + t[1] <= max_element and current_sum + t[1] >= min_element:
            current_group.append(t)
            current_sum += t[1]
        elif current_sum >= min_element:
            groups.append(current_group)
            current_group = [t]
            current_sum = t[1]
        else:
            current_group = [t]
            current_sum = t[1]

    if current_group:
        groups.append(current_group)

    # Stage 2: Distribute remaining tuples to the smallest group
    remaining_tuples = [t for t in tuples_list if t not in chain.from_iterable(groups)]
    while remaining_tuples:
        smallest_group = min(groups, key=lambda x: sum(y[1] for y in x))
        if sum(y[1] for y in smallest_group) + remaining_tuples[0][1] <= max_element:
            smallest_group.append(remaining_tuples.pop(0))
        else:
            new_group = [remaining_tuples.pop(0)]
            groups.append(new_group)

    return groups
    
def merging_batch(
                    input_file_list,
                    output_directory:str,
                    output_name:str,
                    erease:bool=True
                ):
                
    combined_data = {}
    for file in input_file_list:
    
        with open(file, 'rb') as f:
            data = pickle.load(f)
            combined_data.update(data)
            
        if erease:
            os.remove(file)
            logger.info(f"File has been deleted : {file}")
                      
    output_file = os.path.join(output_directory, output_name)
    with open(output_file, 'wb') as f:
        # save the combined data to a new PKL file
        pickle.dump(combined_data, f)
        logger.info(f"File has been created : {output_file}")
    
def uniform_batch_merging(
                            input_directory_graphs:str,
                            input_directory_transformations:str,
                            min_element:int=50,
                            max_element:int=110,
                            erease=True
                        ):

    # To have uniform batches
    list_tuple = []
    for filename in os.listdir(input_directory_graphs):
        if filename.endswith('.pkl'):
            # batch number, cardinality, parameters...
            #000001-000001-2-0-0-1-NPP-j40-07.pkl
            
            base_filename, _ = os.path.splitext(filename)
            batch_number,number_of_problem, *_ = base_filename.split('-')
            list_tuple.append(
                                (filename, int(number_of_problem))
                            )
            
    uniform_batchs = distribute_tuples(list_tuple)
    
    for i, batch in enumerate(uniform_batchs, start=1):
            
        number = "%06d" % i
        output_name = f'{number}-super_batch.pkl'
        
        # graphs
        output_directory = input_directory_graphs
        input_file_list = map(lambda x: os.path.join(input_directory_graphs, x[0]), batch)
        merging_batch(
                        input_file_list,
                        output_directory,
                        output_name,
                        erease
                    )
        logger.info(f"Graphs batches have been uniformized : {input_directory_graphs}")
        
        # transformations
        output_directory = input_directory_transformations
        input_file_list = map(lambda x: os.path.join(input_directory_transformations, x[0]), batch)
        merging_batch(
                input_file_list,
                output_directory,
                output_name,
                erease
            )
        logger.info(f"Transformations batches have been uniformized : {input_directory_transformations}")
        
            

    
# number in the filename
#batch_number, batch_size, min_sub_len, max_sub_len, number_not_trivial_class, H4


 parameters['probleme_generation_combinaison'] = [
                        # num_partitions, min_sub_length, max_sub_length, number_not_trivial_class, H4, batch_size
                        (100, 2, 2, 1, False, 100),
                        (100, 2, 2, 2, False, 100),
                        (100, 2, 2, 3, False, 100),
                        (100, 2, 2, 4, False, 100),
                        (100, 2, 2, 5, False, 100),
                        (100, 3, 3, 1, False, 100),
                        (100, 3, 3, 2, False, 100),
                        (100, 4, 4, 1, False, 100),
                        (100, 5, 5, 1, False, 100),
                        (100, 2, 5, 5, False, 100),
                        (100, 2, 0, 0, False, 100),
                        (100, 2, 2, 1, True, 100),
                        (100, 2, 2, 2, True, 100),
                        (100, 2, 2, 3, True, 100),
                        (100, 2, 2, 4, True, 100),
                        (100, 2, 2, 5, True, 100),
                        (100, 3, 3, 1, True, 100),
                        (100, 3, 3, 2, True, 100),
                        (100, 4, 4, 1, True, 100),
                        (100, 5, 5, 1, True, 100),
                        (100, 2, 5, 5, True, 100),
                        (100, 2, 0, 0, True, 100),
                    ]
                    
elif selected_option == 'option4':
        # Process compute grid for the problem generation
        compute_grid = args.input_file
        n_core = args.n_core
        with open(compute_grid, 'rb') as file:
            commands = file.readlines()
            
        if n_core>1:
            # Create a ThreadPoolExecutor with n workers
            with concurrent.futures.ThreadPoolExecutor(max_workers=n_core) as executor:
                # Create a progress bar with tqdm
                progress_bar = tqdm(total=len(commands))
                futures = {executor.submit(subprocess.run, command.strip(), shell=True, capture_output=True): command for command in commands}
                for future in concurrent.futures.as_completed(futures):
                    command = futures[future]
                    try:
                        result = future.result()
                        logger.debug(f'Output : {result.stdout.decode()}')
                        logger.error(f'Error : {result.stderr.decode()}')
                            
                    except Exception as exc:
                        logger.exception(f'Command {command} failed: {exc}')
                    progress_bar.update(1)
        else:
            for command in tqdm(commands):
                #process = subprocess.Popen(command.strip(), shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                #stdout, stderr = process.communicate()
                process = subprocess.Popen(command.strip(), shell=True, stdout=sys.stdout, stderr=subprocess.STDOUT)
                process.wait()
                
                #logger.debug(f'Output : {result.stdout.decode()}')
                #logger.error(f'{result.stderr.decode()}')

                    
                #time.sleep(0.1)  # laptop in fire
                
                
                def option_4(subparsers_):
    name = 'option4'
    description = textwrap.dedent("Process compute grid")
    help = '...'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
                                
    parser_.add_argument('--input_file', type=str, help='input compute grid file')
    parser_.add_argument('--n_core', type=int, help='number of cores')
    
    
    
    
    
    
    
    
    
    
    if selected_option_3 == '3-1':
            input_directory = args.input_directory
            export_directory_grid = args.export_directory_grid
            export_directory_graphs = args.export_directory_graphs
            export_directory_transformations = args.export_directory_transformations
            output_filename = args.output_filename
            
            compute_grid_problem_generation(
                                            input_directory,
                                            export_directory_grid,
                                            export_directory_graphs,
                                            export_directory_transformations,
                                            output_filename,
                                        )
        
        elif selected_option_3 == '3-2':
            input_directory_graphs = args.input_directory_graphs
            input_directory_transformations = args.input_directory_transformations
            min_element = args.min_element
            max_element = args.max_element
            export_directory_grid = args.export_directory_grid
            output_filename = args.output_filename
            
            compute_grid_merging(
                                input_directory_graphs,
                                input_directory_transformations,
                                min_element,
                                max_element,
                                export_directory_grid,
                                output_filename,
                            )
                            
                            
        elif selected_option_3 == '3-3':
            input_directory_graphs = args.input_directory_graphs
            export_directory_grid = args.export_directory_grid
            export_directory_results = args.export_directory_results
            output_filename = args.output_filename
            
            compute_grid_julia(
                                input_directory_graphs,
                                export_directory_grid,
                                export_directory_results,
                                output_filename,
                            )
                            
        elif selected_option_5 == '5-2':
            input_directory_graphs = args.input_directory_graphs
            input_directory_transformations = args.input_directory_transformations
            min_element = args.min_element
            max_element = args.max_element
            uniform_batch_merging(
                                    input_directory_graphs,
                                    input_directory_transformations,
                                    min_element,
                                    max_element
                                )
                                
def option_3_1(subparsers_): 
        name = '3-1'
        description = textwrap.dedent("Problem transformation generation (parameters in config.test_compute_grid)")
        help = 'test.compute_grid.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_directory', type=str, help='input directory where the original NPP json file are')
        parser_.add_argument('--export_directory_grid', type=str, required=True, help='Path to the export compute grid')
        parser_.add_argument('--export_directory_graphs', type=str, required=True, help='Path to the export NPP json')
        parser_.add_argument('--export_directory_transformations', type=str, required=True, help='Path to the export transformation PKL')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
    
    
    def option_3_2(subparsers_):
        name = '3-2'
        description = textwrap.dedent("Batch uniformisation")
        help = 'test.compute_grid.batch '
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_directory_graphs', type=str, help='directory where the batches of graphs are')
        parser_.add_argument('--input_directory_transformations', type=str, required=True, help='directory where the batches of transformations are')
        parser_.add_argument('--min_element', type=int, help='TO DO')
        parser_.add_argument('--max_element', type=int, help='TO DO')
        parser_.add_argument('--export_directory_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
    
    def option_3_3(subparsers_): 
        name = '3-3'
        description = textwrap.dedent("Julia commands")
        help = 'test.compute_grid.compute_grid_julia'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_directory_graphs', type=str, help='input parent directory where are the original NPP json file')
        parser_.add_argument('--export_directory_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_directory_results', type=str, required=True, help='prepare parent directory to the export result of julia result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        


    
    option_3_1(subparsers__)
    option_3_2(subparsers__)
    option_3_3(subparsers__)
idx = []
data = []
for root, dirs, files in os.walk('./data/generated/problems/paper/original/'):
    for filename in files:
        if filename.endswith("R.json"):
            with open(os.path.join(root, filename), 'r') as f:
                result = json.load(f)
            idx.append(result['id'])
            data.append( (result['id'], result['solve_time']))
df = pd.DataFrame(data, index=idx, columns=['id', 'solve_time',])
pd.set_option('display.max_rows', None)
pd.set_option('display.max_columns', None)
file_path = './data/generated/problems/paper/original/'
command_list = []
for id_, _ in df[df['solve_time']>=1500].values:
    p_path = os.path.join(file_path, f"{id_}.json")
    r_path = os.path.join(file_path, f"{id_[:-1:]}R.json")
    command = f"julia ./src/julia/script.jl '{p_path}' '{r_path}' 5000" 
    command_list.append(command)
preamble =  lambda : [
            "#!/bin/bash",
            "#SBATCH --cpus-per-task=1",
            "#SBATCH --mem=5G",
            "#SBATCH --time=03:00:00",
            "#SBATCH --output=/dev/null",
            "#SBATCH --partition=optimum",
            "module load julia",
            "module load gurobi",
        ]

tmp = []
j=1
for i, command in enumerate(command_list):
    if i%2 == 0 and i>0:
        print(i)
        with open(f"{j}-2-original.sh", 'w') as f:
            f.write('\n'.join(preamble()+tmp+['sleep 60',]))
        tmp = []
        j+=1
    tmp.append(command)
        
preamble =  lambda : [
            "#!/bin/bash",
            "#SBATCH --cpus-per-task=1",
            "#SBATCH --mem=5G",
            "#SBATCH --time=03:30:00",
            "#SBATCH --output=/dev/null",
            "#SBATCH --partition=optimum",
            "module load julia",
            "module load gurobi",
        ]
total_t = 0
command_list = []
j=1
for id_, time_ in df[df['solve_time']<1500].values:
    total_t+=round(time_,0)+250
    p_path = os.path.join(file_path, f"{id_}.json")
    r_path = os.path.join(file_path, f"{id_[:-1:]}R.json")
    command = f"julia ./src/julia/script.jl '{p_path}' '{r_path}' {int(round(time_,0))+250}" 
    command_list.append(command)
    if total_t>10800:
        with open(f'{j}-{len(command_list)}-original.sh', 'w') as f:
            f.write('\n'.join(preamble()+command_list+['sleep 60', ]))
        total_t = 0
        command_list = []
        j+=1
        
tmp = [
    '000000-000000-d50-01-P.json',
    '000000-000000-d50-02-P.json',
    '000000-000000-d50-03-P.json',
    '000000-000000-d50-04-P.json',
    '000000-000000-d50-05-P.json',
    '000000-000000-d50-06-P.json',
    '000000-000000-d50-07-P.json',
    '000000-000000-d50-08-P.json',
    '000000-000000-d50-09-P.json',
    '000000-000000-d50-10-P.json',
    '000000-000000-g30-01-P.json',
    '000000-000000-g30-02-P.json',
    '000000-000000-g30-03-P.json',
    '000000-000000-g30-04-P.json',
    '000000-000000-g30-05-P.json',
    '000000-000000-g30-06-P.json',
    '000000-000000-g30-07-P.json',
    '000000-000000-g30-08-P.json',
    '000000-000000-g30-09-P.json',
    '000000-000000-g30-10-P.json',
    '000000-000000-h50-06-P.json'
]

preamble =  lambda : [
            "#!/bin/bash",
            "#SBATCH --cpus-per-task=1",
            "#SBATCH --mem=5G",
            "#SBATCH --time=03:30:00",
            "#SBATCH --output=/dev/null",
            "#SBATCH --partition=optimum",
            "module load julia",
            "module load gurobi",
        ]

base_path = './data/generated/problems/paper/original/'
command_list = []
j=0
for i,p in enumerate(tmp):
    p_path = os.path.join(base_path, p)
    r_path = os.path.join(base_path, p.replace("P.json", "R.json"))
    command = f"julia ./src/julia/script.jl '{p_path}' '{r_path}' 5000" 
    
    command_list.append(command)
    if i%2 == 0 and i>0:
        with open(f'{j}-2-original.sh', 'w') as f:
            f.write('\n'.join(preamble()+command_list+['sleep 60', ]))
        command_list =[]
        j+=1
        
        
        
        
        
        
        
        

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
                                        
                                        
                                        
                                        
                                        
from preamble.preamble import *

def merging_batch()
    
    problems = {}
    transformations = {}
    for root, dirs, files in os.walk(directory_npp):
        for filename in files:
            if filename.endswith("-P.json"):
            
                base_name, ext = os.path.splitext(filename)
                file_problem = os.path.join(root, filename)
                file_transformation = os.path.join(root, filename.replace(f'-P{ext}', f'-T{ext}'))
                
                with open(file_problem, 'r') as f:
                    problems[base_name] = json.load(f)
                    
                with open(file_transformation, 'r') as f:
                    transformations[base_name] = json.load(f)
    
    
    
    
    combined_data = {}
    for file in input_file_list:
    
        with open(file, 'rb') as f:
            data = pickle.load(f)
            combined_data.update(data)
            
        if erease:
            os.remove(file)
            logger.info(f"File has been deleted : {file}")
                      
    output_file = os.path.join(output_directory, output_name)
    with open(output_file, 'wb') as f:
        # save the combined data to a new PKL file
        pickle.dump(combined_data, f)
        logger.info(f"File has been created : {output_file}")
        
        
        
        
        
        
        
        
        
        
        
    def optimal_ratio_vs_time(
                        df,
                        pb_name,
                        fig_x_size:int=15,
                        fig_y_size:int=15,
                        ticks_font_size:int=16,
                        label_font_size:int=22,
                        title_font_size:int=26,
                        legend_font_size:int=18,
                        log_option:bool=False
                    ):

    df = df.copy()
    o_time = df['solve_time'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']
    o_obj = df['obj_value'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']
    o_time = np.log(o_time) if log_option else o_time
    
    columns = ['min_sl', 'max_sl', 'm', 'H4']
    df['Class'] = df[columns].astype(str).apply('-'.join, axis=1)
    
    df['optimal_ratio'] = df['obj_value']/o_obj
    df['solve_time'] = np.log(df['solve_time']) if log_option else df['solve_time']
    
    
    fig, axes = plt.subplots(nrows=1, ncols=2, figsize=(fig_x_size, fig_y_size))
    
    # Plot with H4
    classes = df[df['H4'] == 1]['Class'].unique()
    classes = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    for class_value in classes:
        class_data = df[(df['Class'] == class_value) & (df['H4'] == 1)]
        sns.scatterplot(
            x='optimal_ratio',
            y='solve_time',
            data=class_data,
            label=f'{class_value}',
            ax=axes[0]
        )
    axes[0].axhline(y=o_time, color='red', linestyle='--')
    axes[0].axvline(x=1, color='red', linestyle='--')
    
    
    # Plot without H4
    classes = df[df['H4'] == 0]['Class'].unique()
    classes = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    for class_value in classes:
        class_data = df[(df['Class'] == class_value) & (df['H4'] == 0)]
        sns.scatterplot(
            x='optimal_ratio',
            y='solve_time',
            data=class_data,
            label=f'{class_value}',
            ax=axes[1]
        )
    axes[1].axhline(y=o_time, color='red', linestyle='--')
    axes[1].axvline(x=1, color='red', linestyle='--')

    y_label = 'Solve Time (log sec)' if log_option else 'Solve Time (sec)'
    # Config
    axes[0].set_xlabel('Optimal Ratio', fontsize=label_font_size);
    axes[0].tick_params(axis='x', labelsize=ticks_font_size);
    axes[0].set_ylabel(y_label, fontsize=label_font_size);
    axes[0].tick_params(axis='y', labelsize=ticks_font_size);
    axes[0].set_title('Optimal Ratio vs. Solve Time by Class (H4=1)', fontsize=title_font_size);

    legend = axes[0].get_legend()
    legend.set_title('Class', prop={'size': legend_font_size+1})
    # set the fontsize of the legend
    for text in legend.get_texts():
        text.set_fontsize(legend_font_size)

    # Config
    axes[1].set_xlabel('Optimal Ratio', fontsize=label_font_size);
    axes[1].tick_params(axis='x', labelsize=ticks_font_size);
    axes[1].set_ylabel(y_label, fontsize=label_font_size);
    axes[1].tick_params(axis='y', labelsize=ticks_font_size);
    axes[1].set_title('Optimal Ratio vs. Solve Time by Class (H4=0)', fontsize=title_font_size);

    legend = axes[1].get_legend()
    legend.set_title('Class', prop={'size': legend_font_size+1})
    # set the fontsize of the legend
    for text in legend.get_texts():
        text.set_fontsize(legend_font_size)
    
    
    plt.tight_layout()
    return fig
    
    

    # (1,0) Without H4 - (Objective)/Objective
    # (1,1) Without H4 - Time density

# Without H4 - (Objective)/Objective
    classes = df[df['H4'] == 0]['Class'].unique()
    classes_order = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    sns.kdeplot(
        data=df[df['H4']==0],
        x='optimal_ratio',
        hue='Class',
        hue_order=classes_order,
        ax=axes[1, 0],
        legend=False
    )
    axes[1, 0].axvline(x=1, color='red', linestyle='--');

    
    # Without H4 - Time density
    classes = df[df['H4'] == 0]['Class'].unique()
    classes_order = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    sns.kdeplot(
        data=df[df['H4']==0],
        x='solve_time',
        hue='Class',
        hue_order=classes_order,
        ax=axes[1, 1],
        clip=(solve_time_min, solve_time_max),
        legend=True
    )
    axes[1, 1].axvline(x=o_time, color='red', linestyle='--');



 # Config
    axes[1, 0].set_xlabel('Optimal ratio', fontsize=label_font_size);
    axes[1, 0].tick_params(axis='x', labelsize=ticks_font_size);
    axes[1, 0].set_ylabel('Density', fontsize=label_font_size);
    axes[1, 0].tick_params(axis='y', labelsize=ticks_font_size);
    axes[1, 0].set_title('(Objective)/Objective without H4', fontsize=title_font_size);

    # Config
    axes[1, 1].set_xlabel('Time (sec)', fontsize=label_font_size);
    axes[1, 1].tick_params(axis='x', labelsize=ticks_font_size);
    axes[1, 1].set_ylabel('', fontsize=label_font_size);
    axes[1, 1].tick_params(axis='y', labelsize=ticks_font_size);
    axes[1, 1].set_title('Time without H4', fontsize=title_font_size);


    legend = axes[1, 1].get_legend()
    legend.set_title('Class', prop={'size': legend_font_size+1})
    # set the fontsize of the legend
    for text in legend.get_texts():
        text.set_fontsize(legend_font_size)
