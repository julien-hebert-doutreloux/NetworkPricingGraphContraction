from preamble.preamble import *
from gamma.common import print_columns, from_json, to_json
from graph.graph import Node, Edge

class Function(dict):
    """
    An immutable dictionary representing a mathematical function.
    Args:
        correspondance (dict): A dictionary where each key represents a
            member of the domain and each value represents the corresponding
            image of the function.
    Attributes:
        domain (set): The set of all inputs for which the function is defined.
        image (set): The set of all possible outputs of the function.
    Raises:
        TypeError: If the user attempts to modify the function instance.
        ValueError: If the user attempts to evaluate the function at an input
            not in the domain, or to compute the inverse of an output not in
            the image.
    """
    __slots__ = ('domain', 'image')

    def __init__(self, correspondance:dict):
        super().__init__(correspondance)
        
        self.domain = set(self.keys())
        self.image = set(self.values())
        
            
    def __call__(self, x):
        """
        Evaluate the function at the input x.
        Args:
            x: An input in the domain of the function.
        Returns:
            The corresponding output of the function.
        """
        if x in self.domain:
            return self[x]
            
        raise ValueError(f"{x} does not exist in the domain")

    def preimage(self, y):
        """
        Compute the preimage of y under the function.
        Args:
            y: An output in the image of the function.
        Returns:
            The set of all inputs that map to y under the function.
        """
        
        if y in self.image:
            preimage = set(filter(lambda x: self(x) == y, self.domain))
            return preimage
        raise ValueError(f"{y} does not exist in the image")

    def __setitem__(self, key, value):
        raise TypeError("Function instance is immutable")

    def __delitem__(self, key):
        raise TypeError("Function instance is immutable")



class Algebra(Function):
    """
        T_A       ⊆     A  ---gamma---> A_      ⊇       T_A_      
        |                |              |                 |
        phi_T_A          phi_A         phi_A_            phi_T_A_
        |                |              |                 |
        V                V              V                 V
        I_T_A --alpha--> I_A --conv_1--> I_A_  <---beta--- I_T_A_
        ||                                                    A
        ||                                                   ||
        -----------------------conv_2------------------------

        A      := edge set
        I_A    := natural index for A_AV
        T_A    := tolled edge set (subset of A_AV)
        I_T_A  := natural index for T_AV

        A_     := edge set after transformation by gamma
        I_A_   := natural index for A_AP
        T_A_   := tolled edge set (subset of A_AP)
        I_T_A_ := natural index for T_AP

        conv_1 = phi_AP * gamma * phi_AV^-1
        alpha  = phi_AV * phi_T_AV^-1
        beta   = phi_AP * phi_T_AP^-1
        conv_2 = beta^-1 * conv_1 * alpha

        V  ---gamma---> V_
        |               |
        phi_V           phi_V_
        |               |
        V               V
        I_V --conv_3--> I_V_

        V    := node set
        I_V  := natural index for V
        V_   := node set after transformation by gamma
        I_V_ := natural index for V_V_

        conv_3 = phi_VP * gamma * phi_VV^-1
    """
    __slots__ = (
                'T_A', 'A', 'A_', 'T_A_',
                'phi_T_A', 'phi_A', 'phi_A_', 'phi_T_A_',
                'I_T_A', 'I_A', 'I_A_', 'I_T_A_',
                'alpha', 'conv_1', 'beta','conv_2', 'conv3',
                'phi_A_inv', 'phi_T_A_inv', 'phi_A__inv', 'phi_T_A__inv', 'alpha_inv','beta_inv',
                'V', 'V_','I_V', 'I_V_',
                'phi_V', 'phi_V_',
                'phi_V_inv', 'phi_V__inv'                
            )
                
    def __init__(self, nodes, edges,  edge_partition=None):
        
        # function
        phi_A = Function({edge : i for i, edge in enumerate(edges, start=1)})    # A -> I_A
        phi_V = Function({node : i for i, node in enumerate(nodes, start=1)})    # V -> I_V
        
        # domain set
        A = phi_A.domain    # edge set
        V = phi_V.domain    # node set
        
        # image set
        I_A = phi_A.image    # edge set
        I_V = phi_V.image    # node set
        
        # partition
        P_A = edge_partition if edge_partition else [(e,) for e in A]   # edges partition
        P_V = Gamma.find_node_partition(P_A)                            # nodes partition
        
        
        # Selection hypothesis
        # min cost for parallel edge if not tolled
        # min index of the equivalence class
        # representant label is the label of minimum index one in []
        nodes_correspondance = {}
        for cls in P_V:
            r = sorted(cls, key=phi_V)[0]
            label, value = f"[{r}]", cls
            representant = Node(label, value)
            for e in cls:
                nodes_correspondance[e] = representant
                
        edges_correspondance = {}
        for cls in P_A:
            r = sorted(cls, key=phi_A)[0]
            src, dst = nodes_correspondance[r.src], nodes_correspondance[r.dst]
            label = f"[{r.label}]"
            # the min allow partition with none equal edge cost without errors (will be used to further reduce graph with parallel edges)
            cost = min(map(lambda x: x.cost, cls))  # hypothese: all price are suppose to be equal
            toll = r.toll                           # hypothese: every edge should be tolled
            representant = Edge(src, dst, label, cost, toll)
            for e in cls:
                edges_correspondance[e] = representant
                
        super().__init__({**nodes_correspondance, **edges_correspondance})
        gamma = self
        
        # function
        phi_T_A = Function({ej: i for i, ej in enumerate(sorted(filter(lambda x: x.toll, A), key=phi_A), start=1)}) # T_A -> I_T_A
        phi_A_ = Function({edge : i for i, edge in enumerate(dict.fromkeys(map(gamma, sorted(A, key=phi_A))), start=1)}) # A_ -> I_A_  
        phi_V_ = Function({node : i for i, node in enumerate(dict.fromkeys(map(gamma, sorted(V, key=phi_V))), start=1)}) # V_ -> I_V_
        
        # domain
        T_A = phi_T_A.domain    # edge set
        A_ = phi_A_.domain      # edge set
        V_ = phi_V_.domain      # node set
        
        # image
        I_T_A = phi_T_A.image   # index set
        I_A_ = phi_A_.image     # index set
        I_V_ = phi_V_.image     # index set
        
        # function
        phi_T_A_ = Function({ej: i for i, ej in enumerate(sorted(set(map(gamma, T_A)), key=phi_A_), start=1)}) # T_A_ -> I_T_A_
        # domain
        T_A_ = phi_T_A_.domain  # edge set
        # image
        I_T_A_ = phi_T_A_.image # index set
        
        
        # inverse function
        phi_A_inv = Function({phi_A(edge) : edge for edge in A})            # I_A -> A
        phi_V_inv = Function({phi_V(node) : node for node in V})            # I_V -> V
        phi_A__inv = Function({phi_A_(edge) : edge for edge in A_})         # I_A_ -> A_
        phi_V__inv = Function({phi_V_(node) : node for node in V_})         # I_V_ -> V_
        
        phi_T_A_inv = Function({phi_T_A(edge) : edge for edge in T_A})        # I_T_A -> T_A
        phi_T_A__inv = Function({phi_T_A_(edge) : edge for edge in T_A_})   # I_T_A_ -> T_A_
        
        alpha = Function({i : phi_A(phi_T_A_inv(i)) for i in I_T_A})        # I_T_A -> I_A
        alpha_inv = Function({alpha(i) : i for i in alpha.domain})           # I_A -> I_T_A
        beta = Function({i : phi_A_(phi_T_A__inv(i)) for i in I_T_A_})      # I_T_A_ -> I_A_
        beta_inv = Function({beta(i) : i for i in beta.domain})              # I_A_ -> I_T_A_
        
        conv1 = Function({i : phi_A_(gamma(phi_A_inv(i))) for i in I_A})     # I_A -> I_A_
        conv2 = Function({i : beta_inv(conv1(alpha(i))) for i in I_T_A})    # I_T_A -> I_T_A_
        conv3 = Function({i : phi_V_(gamma(phi_V_inv(i))) for i in I_V})
        
        #############################################################################################
        # function
        self.phi_A     = phi_A
        self.phi_A_inv = phi_A_inv
        
        self.phi_T_A     = phi_T_A
        self.phi_T_A_inv = phi_T_A_inv
        
        self.phi_A_ = phi_A_
        self.phi_A__inv = phi_A__inv
        
        self.phi_T_A_ = phi_T_A_
        self.phi_T_A__inv = phi_T_A__inv
        
        self.phi_V = phi_V
        self.phi_V_inv = phi_V_inv
        
        self.phi_V_ = phi_V_
        self.phi_V__inv = phi_V__inv
        
        self.alpha = alpha
        self.alpha_inv = alpha_inv

        self.beta = beta
        self.beta_inv = beta_inv

        self.conv1 = conv1
        self.conv2 = conv2
        self.conv3 = conv3
        
        # domain
        self.A = A
        self.A_ = A_ 
        self.V = V
        self.V_ = V_
        self.T_A = T_A
        self.T_A_ = T_A_
        
        # image
        self.I_T_A = I_T_A
        self.I_T_A_ = I_T_A_
        self.I_A = I_A
        self.I_A_ = I_A_
        self.I_V = I_V
        self.I_V_ = I_V_
        
        # partition
        self.P_A = P_A
        self.P_V = P_V
        
        
    @staticmethod
    def find_node_partition(edge_partition):
        """Return the node partition induce by an edge partition"""
        if all(map(lambda x: len(x)==1, edge_partition)):
            edges = set().union(*edge_partition)
            nodes = set(map(lambda x: x.src, edges)) | set(map(lambda x: x.dst, edges))
            return [{n,} for n in nodes]
        
        V_quotient = set()
        
        # Construire l'ensemble quotient partiel V/~
        for equiv_cls in edge_partition:
            
            # Couplage des sommets initiaux
            start_nodes = frozenset([elem.src for elem in equiv_cls])
            
            # Couplage des sommets finaux
            end_nodes = frozenset([elem.dst for elem in equiv_cls])
           
            V_quotient.add(start_nodes)
            V_quotient.add(end_nodes)
            
        # Suppression des sommets deja present dans un classe
        # d'equivalence partielle plus grande
        def remove_already_represented_singleton(S, union=None):
            S = set(S)
            if type(union) == type(None):
                S -= {e for e in         
                        map(lambda x: frozenset({x, }), filter(lambda x: len(x)>= 2, S))
                }
            else:
                S -= {e for e in   
                        map(lambda x: frozenset({x, }), union)
                }
            return list(S)
        
        
        # Ordonne par taille d'ensemble                        
        V_quotient = list(map(frozenset, V_quotient))
        def chain_step(S):
            chain = []
            while len(S) >= 1:
                e1 = S.pop()
                for e2 in S:
                    intersection = e1 & e2
                    
                    if intersection != frozenset():
                        union = e1 | e2
                        chain.insert(0, union)
                        S.remove(e2)
                        S = remove_already_represented_singleton(S, union)
                        chain += S
                        chain = chain_step(chain)
                        break
                
                if any(map(lambda x: (x & e1) != frozenset(), chain)):# filter
                   return chain
                   
                else:
                    chain.append(e1)
                    
            return chain
                        
        result = chain_step(V_quotient)
        result = list(map(tuple, result))
        return result
            
            
            
class Gamma(Algebra):
    def __init__(self, nodes, edges, edge_partition=None):
        super().__init__(nodes, edges, edge_partition)
    
    def export_transformation(self, directory, filename):
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

        
        transformation = {'V':{}, 'A':{}, 'RV':{}, 'RA':{}}
        
        # Vertex domain-image index correspondance
        transformation['V'] = dict(self.conv3)
        
        # Edge domain-image index correspondance
        transformation['A'] = dict(self.conv1)
        
        # Vertex domain index relation
        transformation['RV'] = [
                                tuple(
                                    map(
                                        self.phi_V, cls
                                        )
                                    ) for cls in self.P_V
                                ]
                                
        # Edge domain index relation
        transformation['RA'] = [
                                tuple(
                                    map(
                                        self.phi_A, cls
                                        )
                                    ) for cls in self.P_A
                                ]
        # Write the list of sets to the file
        with open(output_file, 'wb') as f:
            pickle.dump(transformation, f)
        
        return output_file
    
    @classmethod
    def from_transformation_pickle(cls, nodes, edges, transformation_file, **kwargs):
        with open(transformation_file, 'rb') as f:
            transformation = pickle.load(f)
        
        index_edge = Function({i:edge for i, edge in enumerate(edges, start=1)})
        
        edge_partition = [tuple(map(index_edge, cls)) for cls in transformation['RA']]
        return cls(nodes, edges, edge_partition, **kwargs)
    
    
    def to_networkx(self):
        G = nx.MultiDiGraph()
        G.add_edges_from(map(lambda x: (x.src, x.dst), self.A_))
        return G
        
    def summary(self):
        # Before transformation
        nodes = sorted(self.V, key=self.phi_V)
        edges = sorted(self.A, key=self.phi_A)
        
        edge_partition = self.P_A
        
        # After transformation
        transformed_nodes = sorted(self.V_, key=self.phi_V_)
        transformed_edges = sorted(self.A_, key=self.phi_A_)

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
            
        # object-index
        # V -> I_V
        c1 = [f"{k}->{v}" for k,v in self.phi_V.items()]
        # ~V -> I_{~V}
        c2 = [f"{k}->{v}" for k,v in self.phi_V_.items()]
        
        # A -> I_A
        c3 = [f"{k}->{v}" for k,v in self.phi_A.items()]
        # ~A -> I_{~A}
        c4 = [f"{k}->{v}" for k,v in self.phi_A_.items()]
        
        # index-index
        # I_V -> I_{~V}
        c5 = [f"{k}->{v}" for k,v in self.conv3.items()]
        # I_A -> I_{~A}
        c6 = [f"{k}->{v}" for k,v in self.conv1.items()]
        
        print_columns(c1, c2, c3, c4, c5, c6, headers=['V -> I_V', '~V -> I_{~V}', 'A -> I_A', '~A -> I_{~A}', 'I_V -> I_{~V}', 'I_A -> I_{~A}'])


class GammaNPP(Gamma):
    __slots__ = ('problems_domain', 'problems_image')
    def __init__(self, nodes, edges, edge_partition=None, problems=None):
    
        def preprocessing(nodes, edges, problems):
            for edge in edges:
                # every tolled arc starting cost is 1
                if edge.toll:
                    edge.cost = 1
                # only integer cost
                else:
                    edge.cost = max(round(edge.cost, 0), 1)
                
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
                problem['demand'] = max(round(problem['demand'], 0), 1)
                
        preprocessing(nodes, edges, problems)
        super().__init__(nodes, edges, edge_partition)
        
        
        self.problems_domain = problems
        self.problems_image = []
        
        # Algebraic redundance correction
        # when [1] -> [2] is equivalent to [i] --> [j], we only need to add up their respective demand
        tmp = []
        for k in problems:
            origin_destination = (self(k['orig']), self(k['dest']))
            if not origin_destination in tmp:
                tmp.append(origin_destination)
                self.problems_image.append({})
                self.problems_image[-1]['orig'] = origin_destination[0]
                self.problems_image[-1]['dest'] = origin_destination[1]
                self.problems_image[-1]['demand'] = k['demand']
                
            else:
                index = tmp.index(origin_destination)
                self.problems_image[index]['demand'] += k['demand']
                
        
    def export(self, directory, filename):
    
        # Check if the directory exists
        if not os.path.isdir(directory):
            print(f"Error: The specified directory does not exist: {directory}")
            return

        output_file = os.path.join(directory, f"{filename}.json")
        
        # Check if the file already exists
        if os.path.isfile(output_file):
            print(f"Error: The specified file already exists: {output_file}")
            return
        
        # Prepare to export
        nodes = [Node(v) for v in self.phi_V_.values()]
        edges = [Edge(
                    src=nodes[self.phi_V_(k.src)-1],
                    dst=nodes[self.phi_V_(k.dst)-1],
                    label=v, cost=k.cost, toll=k.toll) 
                    for k, v in self.phi_A_.items()
                ]
        
        problems = []
        for k in self.problems_image:
            problems.append({})
            problems[-1]['orig'] = nodes[self.phi_V_(k['orig'])-1]
            problems[-1]['dest'] = nodes[self.phi_V_(k['dest'])-1]
            problems[-1]['demand'] = k['demand']
            
        to_json(
                nodes,
                edges,
                problems,
                directory,
                filename
                )
                
        return os.path.join(directory, filename)
                
                
       
    # not tested
    @classmethod      
    def revised_problem_from_result(cls, before_json, transformation_file, after_result):
        # going back to the original problem and change the cost of the tolled edge
        # accordingly to the result from the transformation
        for e in edges:
            if e.toll:
                general_index = phi_1(e)
                tolled_index = phi_5(general_index)
                e.cost = opt_val_ap(tolled_index)

        # no partition here because we return to the original problem
        return cls(nodes, edges, problems=problems)
        
        #output_folder, filename = os.path.split(g_file)
        #filename, _ = os.path.splitext(filename)
        #filename = filename.replace('NPP', 'NPPR')
        #r_gamma.export(output_folder, filename)
                
        
if __name__ == "__main__": 
    pass
        
    
