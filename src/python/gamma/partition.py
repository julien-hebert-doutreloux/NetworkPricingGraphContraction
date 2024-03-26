from preamble.preamble import *

from unit_test.tools import timing_decorator, unit_test_decorator
from gamma.gamma import Gamma, Edge, Node
from gamma.common import set_of_frozenset


# Tested
def powerset_generator(iterable):
    s = list(iterable)
    n = len(s)

    for i in range(2**n):
        subset = tuple(compress(s, map(int, bin(i)[2:].rjust(n, '0'))))
        yield subset
        
        
# Tested
if False:
    def powerset_generator(iterable):
        """
        Generates the powerset of the given iterable.
        The powerset of a set is the set of all its subsets, including the empty set
        and the set itself. This function takes an iterable as input and yields each
        subset of the iterable as it generates the powerset.

        Parameters:
        - iterable: An iterable (e.g., list, tuple) from which to generate the powerset.

        Yields:
        Each subset of the powerset, represented as tuples.

        Example:
        >>> list(powerset_generator([1, 2, 3]))
        [(), (1,), (2,), (3,), (1, 2), (1, 3), (2, 3), (1, 2, 3)]
        """
        
        s = list(iterable)
        for r in range(len(s), -1, -1):
            yield from combinations(s, r)
        
      
# Tested
def compatible(test_set, rules:dict) -> bool:
    """
    Checks if the elements in the given test set are compatible based on a set of rules.

    This function takes a test set and a dictionary of rules as input. It calculates
    the union of the sets associated with each element in the test set according to
    the rules. If the intersection of this union and the test set is an empty set,
    the elements in the test set are considered compatible.
    
    The rules input is the incompatibility dictionary.
    Parameters:
    - test_set: A set of elements to be checked for compatibility.
    - rules: A dictionary where keys are elements and values are sets of compatible elements.

    Returns:
    True if the elements in the test set are compatible, False otherwise.

    Example:
    (INCOMPATIBILITY RULES)
    >>> rules = {'A': {'B', 'C'}, 'B': {'A', 'D'}, 'C': {'A'}, 'D': {'B'}}
    >>> compatible({'A', 'B'}, rules)
    False
    >>> compatible({'A', 'D'}, rules)
    True
    """
    
    #union = set()
    
    #for elem in test_set:
    #    union |= rules[elem]
        
    #if union & test_set == set():
    #    return True
        
    #return False
    # incompatibility rules
    #return not any(rules[elem] & test_set for elem in test_set)
    
    # compatibility rules
    return not any(not test_set.issubset(rules[elem]) for elem in test_set)


    
# Tested
def find_every_compatible_union(rules:dict):
    """
    Finds every compatible union of elements based on a set of rules.

    This function generates all possible subsets of the keys in the given rules
    dictionary using the powerset_generator. For each subset, it checks if the
    elements in the subset form a compatible set according to the provided rules.
    If a compatible set is found, it is yielded.

    Parameters:
    - rules: A dictionary where keys are elements and values are sets of compatible elements.

    Yields:
    Each compatible union of elements, represented as sets.

    Example:
    >>> rules = {'A': {'B', 'C'}, 'B': {'A', 'D'}, 'C': {'A'}, 'D': {'B'}}
    >>> list(find_every_compatible_union(rules))
    [{}, {'A'}, {'B'}, {'C'}, {'D'}, {'A', 'D'}, {'B', 'C'}, {'C', 'D'}]
    """
    
    for c in powerset_generator(rules):
        c = set(c)
        
        if compatible(c, rules):
            yield c


# Tested
def find_all_compatible_partition_brute_force(rules):
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
    (INCOMPATIBILITY RULES)
    >>> rules = {'A': {'B', 'C'}, 'B': {'A'}, 'C': {'A'}}
    >>> list(find_all_compatible_partition_brute_force(rules))
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


    def my_partition(iterable):
        # Just to output in the right data structure
        for e in set_partitions(iterable):
            yield {frozenset(part) for part in e}
                
                
    target_union = set(rules)
    compatible_union = set(map(frozenset, find_every_compatible_union(rules)))
    
    for p in my_partition(target_union):
        if p.issubset(compatible_union) and set().union(*p) == target_union:
            yield p

    
    
# Tested
def compatible_union_not_brute_force(rules:dict, stop_n=-1, verbose=False):
    """
    Generate all compatible unions of size 1 to n from a given set of rules,
    where a compatible union is a set of elements that can be combined
    according to the rules.

    This function uses a recursive approach that avoids generating all
    possible combinations of elements, making it more efficient than a
    brute-force approach.

    Args:
        rules (dict): A dictionary where the keys are elements and the values
            are sets of compatible elements.
        stop_n (int): The maximum size of compatible unions to generate.
            Default is -1, which means to generate all possible sizes.
        verbose (bool): Whether to print progress messages. Default is False.

    Yields:
        frozenset: A compatible union of size 1 to n.
        
    Example:
    >>> test_rules = {
                'e1': {'e1', 'e4', 'e3', 'e7'},
                'e4': {'e1', 'e4', 'e3', 'e7'},
                'e3': {'e3', 'e1', 'e4'},
                'e7': {'e7', 'e1', 'e4'}
                }
    >>> list(compatible_union_not_brute_force(test_rules))
    >>> [frozenset({'e1'}),
        frozenset({'e4'}),
        frozenset({'e3'}),
        frozenset({'e7'}),
        frozenset({'e1', 'e4'}),
        frozenset({'e1', 'e3'}),
        frozenset({'e1', 'e7'}),
        frozenset({'e4', 'e3'}),
        frozenset({'e4', 'e7'}),
        frozenset({'e1', 'e4', 'e3'}),
        frozenset({'e1', 'e4', 'e7'})]
    """
    
    all_unions = {}
    
    # Yield 1-union
    start_time = time.time()
    for e in rules:
        yield frozenset({e, })
    all_unions[1] = {k: v.copy() for k,v in rules.items()}
    last_time = time.time()

    
    if verbose:
        print(f"{round(last_time - start_time, 6)} sec -- |{1}-union| = {len(all_unions[1])}")
    
    all_unions[2] = {}
    rules_c = {k: v.copy() for k, v in all_unions[1].items()}
    
    start_time = time.time()
    for u in rules_c:
        rules_c[u].discard(u)
        
        while rules_c[u]:
            v = rules_c[u].pop()
            union = {u,  v}
            all_unions[2][frozenset(union)] = (rules[u] & rules[v]) - union
            rules_c[v].discard(u)
            
            # Yield 2-union
            yield frozenset(union)
            
    last_time = time.time()
    all_unions.pop(1)
    
    if verbose:
        print(f"{round(last_time - start_time, 6)} sec -- |{2}-union| = {len(all_unions[2])}")
    
    
    def perform_unions_recursively(all_unions, n, rules):
        if n <= 2 or stop_n+1==n:
            return
            
        all_unions[n] = {}
        rules_c = {k.copy(): v.copy() for k, v in all_unions[n-1].items()}
        keys = set(rules_c.keys())
        start_time = time.time()
        while keys: 
            u = keys.pop() # u is a frozenset
            rules_c[u].discard(u)
            
            while rules_c[u]:
                
                v = rules_c[u].pop()
                union = u | {v, }
                
                if not (frozenset(union) in all_unions[n]):
                    if union.issubset(rules[v]):
                        all_unions[n][frozenset(union)] = (all_unions[n-1][u] & rules[v]) - union 
                        
                        # Yield n-union
                        yield union
                        
            rules_c.pop(u)
            
        last_time = time.time()
        if verbose:
            print(f"{round(last_time - start_time, 6)} sec -- |{n}-union| = {len(all_unions[n])}")
        
        if any(filter(lambda x: len(x)>0, all_unions[n].values())):
            all_unions.pop(n-1)
            yield from perform_unions_recursively(all_unions, n+1, rules)
            

    yield from perform_unions_recursively(all_unions, 3, rules)
                
    
def find_all_partition_not_brute_force(rules:dict, stop_n=-1):
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
    """
    
    list_of_sets = list(map(set, compatible_union_not_brute_force(rules, stop_n)))

    target_union = set(rules)
    result = []

    def find_subsets_for_partition(sets, target_union, current_index, current_partition, result):
        if current_index == len(sets):
            # Check if the union of the current partition is the target union
            if set().union(*current_partition) == target_union:
                result.append(current_partition.copy())
                #input(result[-1])
            return

        # Include the current set in the partition if its intersection with existing sets is empty
        if all(not sets[current_index].intersection(element) for element in current_partition):
            current_partition.append(sets[current_index])

            # Recursively explore subsets with the current set included
            find_subsets_for_partition(sets, target_union, current_index + 1, current_partition, result)

            # Backtrack and explore subsets without the current set
            current_partition.pop()

        # Recursively explore subsets without the current set
        find_subsets_for_partition(sets, target_union, current_index + 1, current_partition, result)

    find_subsets_for_partition(list_of_sets, target_union, 0, [], result)
    return result
