from preamble.preamble import *
from gamma.common import set_of_frozenset
from gamma.gamma import Edge, Node

def make_rules(edges_list:iter) -> dict:
    # H1 : Continuity-free edge equivalence class hypothesis (True by default)
    # H2 : Equivalence class assumption for elements of equal value (False by default)
    # H3 : Tolled element equivalence class hypothesis (True by default)
    # H4 : Local element only (False by default)
    
    H1, H2, H3, H4 = True, False, True, False
    
    def H1_condition(edge1:Edge, edge2:Edge) -> bool:
        # Not continuous
        return (edge1.dst != edge2.src) and (edge2.dst != edge1.src)
        
    def H2_condition(edge1:Edge, edge2:Edge) -> bool:
        # equal price
        return (edge1.cost != edge2.cost)
        
    def H3_condition(edge1:Edge, edge2:Edge) -> bool:
        # =Tolled
        return (edge1.toll == edge2.toll == True)
        
    def H4_condition(edge1:Edge, edge2:Edge) -> bool:
        # Local contigue
        return ((edge1.dst == edge2.dst) or (edge1.src == edge2.src))
    
    def are_compatible(edge1:Edge, edge2:Edge) -> bool:
        return H1_condition(edge1, edge2) and H3_condition(edge1, edge2) # and H4_condition(edge1, edge2) #and H2_condition(edge1, edge2)
    
    if H3:
        prepartition = list(filter(lambda x: x.toll, edges_list))
    
    if H2:
        # Sort the list by the value attribute (required for groupby)
        prepartition.sort(key=lambda x: x.cost)

        # Use groupby to group elements by their value
        prepartition = [list(group) for key, group in groupby(prepartition, key=lambda x: x.cost)]
    
    else:
        prepartition = [prepartition, ]
    
    if H1:
        #print(*[str(set(map(str, cls))) for cls in prepartition], sep='\n')
        # s'il y a plusieurs element non vide dans prepartition, il faudra faire toutes les combinaisons entre les partitions possibles
        # de chaque element de prepartition (par default, prepartition contient un element sous les hypotheses 1,2,3)
        for sub in prepartition:
            rules = {elem:set(filter(lambda x: are_compatible(x, elem), sub)) for elem in sub}
            
            # compatibility rules
            #print(readable_dict,sep='\n')
            #print(*find_all_compatible_partition(readable_dict), sep='\n')
            # python unit_test.py | sed 's/frozenset//g'
    return rules
        
def readable_rules(rules):
    readable_dict = {str(key) : set(map(str, elem)) for key, elem in rules.items()}
    return readable_dict
    
    
class Rules(dict):
    """
    Class for compatibility dictionary
    In other word, the dictionary where vertices are keys and neighbours are values.
    """
    __slots__ = ('valid', 'complement_rules', 'option')
    def __init__(self, rules, option=1):
        super().__init__(rules)
        self.option = option
        
        self.valid = True
        for vertex in self:
            for neighbor in self[vertex]:
                if not vertex in self[neighbor]:
                    self.valid=False
                    
            if not vertex in self[vertex]:
                self.valid=False
        
        self.complement_rules = {k: set(self) - v for k, v in self.items()}
        
        #assert self.valid, "Incorrect set of rules"
    
    def ordered_keys_cardinality(self, reverse=False):
        return sorted(list(self), key=lambda x: len(self[x]), reverse=reverse)
    
    def ordered_values_by_affinity(self, reverse=False):
        # Deep L1
        #  0) rien
        #** 1) /(len(self[x])+1)
        #  2) * len(self[k1])
        #* 3) * len(self.complement_rules[x])
        #  4) /(len(self.complement_rules[x])+1)
        #* 5) * len(self.complement_rules[x])/(len(self[x])+1)
        #  6) * len(self[x])/(len(self.complement_rules[x])+1)
        #  7) * len(set(self[k1])&set(self[x]))
        #  8) *len(self[x])
        
        
        # number of other value in the rules[k2] for which k1 is compatible
        option = self.option
        complement_rules = self.complement_rules
        lenght_dict = {k:len(v) for k,v in self.items()}
        
        if str(option) == str(0):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]), self[k2]))
        elif str(option) == str(1):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]) / (lenght_dict[x]), self[k2]))
        elif str(option) == str(2):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]) * lenght_dict[k1], self[k2]))
        elif str(option) == str(3):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]) * len(complement_rules[x]), self[k2]))
        elif str(option) == str(4):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]) / (len(complement_rules[x])+1), self[k2]))
        elif str(option) == str(5):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]) * len(complement_rules[x])/(lenght_dict[x]), self[k2]))
        elif str(option) == str(6):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]) * lenght_dict[x]/(len(complement_rules[x])+1), self[k2]))
        elif str(option) == str(7):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]) * len(set(self[k1])&set(self[x])), self[k2]))
        elif str(option) == str(8):
            affinity_number = lambda k1, k2 : sum(map(lambda x: (k1 in self[x]) * lenght_dict[x], self[k2]))
            
        res = {
                key: sorted(list(self[key]),
                        key=lambda x: affinity_number(x, key), reverse=reverse)
                    for key in self
            }
        
        
        return res
     
    def approx_max_clique(self, return_all=False, reverse=False):
        """
        Not an exact algorithm that finds an approximate largest clique if we interpret the rules as a graph.
        
        Example:
            import time
            import networkx as nx
            
            >>> test_rules = {
                    'e1': {'e1', 'e4', 'e3', 'e7'},
                    'e4': {'e1', 'e4', 'e3', 'e7'},
                    'e3': {'e3', 'e1', 'e4'},
                    'e7': {'e7', 'e1', 'e4'}
                    }
                    
            >>> test_rules = Rules(test_rules)
            >>> st = time.time()
            >>> result2_all, result2 = test_rules.approx_max_clique(return_all=True)
            >>> ft = time.time()-st
            >>> print(f"\
                        [approx_max_clique]\n\
                        \tTime : {round(ft, 6)} sec\n\
                        \tLenght : {len(result2)}\n\
                        \tCompatible : {compatible(result2, test_rules)}\n\
                        \tResult : {result2}\
                    ")
                    
                    
        The corresponding algorithm from networkx can also be use to do the same
        
        # Preprocessing for max clique algo from networkx
        >>> G = nx.Graph()
        >>> test_rules = Rules(test_rules)
            
        # Add nodes and edges to the graph based on the dictionary
        >>> for node in test_rules.ordered_keys_cardinality():
        >>>     G.add_node(node)
        >>>     neighbors = test_rules[node]
        >>>     for neighbor in neighbors:
        >>>         G.add_edge(node, neighbor)
        
        >>> st = time.time()
        >>> result1 = nx.approximation.max_clique(G)
        >>> ft = time.time()-st
        >>> print(f"\
                [nx.approximation.max_clique]\n\
                \tTime : {round(ft, 6)} sec\n\
                \tLenght : {len(result1)}\n\
                \tCompatible : {compatible(result1, test_rules)}\n\
                \tResult : {result1}\
            ")
        """
        
        res = self.ordered_values_by_affinity(reverse=reverse)
        complement_rules = self.complement_rules
        
        unions = []
        max_len, max_clique = 0, {}
        
        for k in self:
            clique = set()
            
            for e in res[k]: #neigbours
                if not (complement_rules[e] & clique):
                    clique.add(e)
            
            unions.append(clique)
            
            len_clique = len(clique) 
            if len_clique > max_len:
                max_len, max_clique = len_clique, clique
                
            
        if return_all:
            return unions, max_clique
            
        return max_clique
        
    def random_partition(self, number_or_partition=1, max_len=3):

        if max_len == -1:
            max_len = len(self)
        
        generators, max_gen = self.approx_max_clique(return_all=True)
        
        partitions = []
        for _ in range(number_or_partition):
            partition = []
            union = set()
            while union != set(self):

                random_generator = random.sample(generators, 1)[-1] - union
                #input(f"random_generator = {random_generator}")
                
                if random_generator:
                    max_length = min(len(self) - len(union), len(random_generator), max_len)
                    random_size = random.randint(1, max_length)
                    #input(f"random_size = {random_size}")
                    
                    random_subset = set(random.sample(list(random_generator), random_size))
                    #input(f"random_subset = {random_subset}")
                    
                    # correction des duplicats
                    random_subset -= set().union(*partition)
                    
                    if random_subset != set():
                        partition.append(random_subset)
                        random_generator -= random_subset
                        
                        union |= random_subset
                        
            partition = set_of_frozenset(partition) 
            if not partition in partitions:
                partitions.append(partition)
        
        return partitions
