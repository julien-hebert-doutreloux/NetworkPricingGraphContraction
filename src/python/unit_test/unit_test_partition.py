from preamble.preamble import *
#########################
## UNIT_TEST_PARTITION.PY
#########################
from gamma.partition import powerset_generator, compatible, find_every_compatible_union,\
                        find_all_compatible_partition_brute_force, compatible_union_not_brute_force,\
                            find_all_partition_not_brute_force
from unit_test.tools import timing_decorator, unit_test_decorator
from gamma.common import set_of_frozenset
from unit_test.examples import exemple1, exemple3, exemple5 

@unit_test_decorator
def UNIT_TEST_powerset_generator():
    test_set = {1,2,3}
    
    true_powerset = {
                    frozenset(set()),
                    frozenset({1,}),
                    frozenset({2,}),
                    frozenset({3,}),
                    frozenset({1, 2}),
                    frozenset({1, 3}),
                    frozenset({2, 3}),
                    frozenset({1, 2, 3}),
                    }
    
    test_powerset = { frozenset(x) for x in powerset_generator(test_set) }
    test = (true_powerset == test_powerset)
    
    assert test, f"powerset_generator failed to generate the powerset"
    
@unit_test_decorator
def UNIT_TEST_compatible():
    # when rules are described in terms of incompatibility
    #test_rules = {
    #    'e1': set(),
    #    'e4': set(),
    #    'e3': {'e7',},
    #    'e7': {'e3',},
    #}
    # when rules are described in terms of compatibility
    test_rules = {
                    'e1': {'e1', 'e4', 'e3', 'e7'},
                    'e4': {'e1', 'e4', 'e3', 'e7'},
                    'e3': {'e3','e1', 'e4'},
                    'e7': {'e7', 'e1', 'e4'}
                    }
    
    test_set = {'e1', 'e4'} # Compatible
    test = (True == compatible(test_set, test_rules))
    assert test, f"compatible failed"
    
    test_set = {'e3', 'e7'} # Incompatible
    test = (False == compatible(test_set, test_rules))
    assert test, f"compatible failed"
    
    test_set = {'e1', 'e4', 'e7'} # Compatible
    test = (True == compatible(test_set, test_rules))
    assert test, f"compatible failed"
    
    test_set = {'e1', 'e4', 'e3'} # Compatible
    test = (True == compatible(test_set, test_rules))
    assert test, f"compatible failed"
    
    test_set = {'e1', 'e4', 'e3', 'e7'} # Incompatible
    test = (False == compatible(test_set, test_rules))
    assert test, f"compatible failed"
    
def UNIT_TEST_find_every_compatible_union():
    # when rules are described in terms of incompatibility
    #test_rules = {
    #    'e1': set(),
    #    'e4': set(),
    #    'e3': {'e7',},
    #    'e7': {'e3',},
    #}
    
    # when rules are described in terms of compatibility
    test_rules = {
                    'e1': {'e1', 'e4', 'e3', 'e7'},
                    'e4': {'e1', 'e4', 'e3', 'e7'},
                    'e3': {'e3','e1', 'e4'},
                    'e7': {'e7', 'e1', 'e4'}
                    }
    true_set = {
        frozenset(set()),
        frozenset({'e1'}),
        frozenset({'e4'}),
        frozenset({'e3'}),
        frozenset({'e7'}),
        frozenset({'e1', 'e4'}),
        frozenset({'e1', 'e3'}),
        frozenset({'e1', 'e7'}),
        frozenset({'e4', 'e3'}),
        frozenset({'e4', 'e7'}),
        frozenset({'e1', 'e4', 'e3'}),
        frozenset({'e1', 'e4', 'e7'}),
    }    
    
    test_set = { frozenset(x) for x in find_every_compatible_union(test_rules) }
    test = (true_set == test_set)    
    assert test, f"find_every_compatible_union failed"
    
    
    test_set = set_of_frozenset(compatible_union_not_brute_force(test_rules))
    true_set.remove(frozenset(set()))
    test = (true_set == test_set)    
    assert test, f"compatible_union_not_brute_force failed"
    
    # when rules are described in terms of incompatibility
    #test_rules = {'A': {'B', 'C'}, 'B': {'A', 'D'}, 'C': {'A'}, 'D': {'B'}}
    
    # when rules are described in terms of compatibility
    test_rules = {'A': {'A', 'D'}, 'B': {'B', 'C'}, 'C': {'B','C','D'}, 'D': {'A', 'C', 'D'}}
    true_set = {
            frozenset(set()),
            frozenset({'A'}),
            frozenset({'B'}),
            frozenset({'C'}),
            frozenset({'D'}),
            frozenset({'A', 'D'}),
            frozenset({'B', 'C'}),
            frozenset({'C', 'D'}),
    }
    test_set = { frozenset(x) for x in find_every_compatible_union(test_rules) }
    test = (true_set == test_set)    
    assert test, f"find_every_compatible_union failed"
    
    test_set = set_of_frozenset(compatible_union_not_brute_force(test_rules))
    true_set.remove(frozenset(set()))
    test = (true_set == test_set)    
    assert test, f"compatible_union_not_brute_force failed"
    
    
    
@unit_test_decorator
def UNIT_TEST_find_all_compatible_partition():
    # when rules are described in terms of incompatibility
    #test_rules = {
    #    'e1': set(),
    #    'e4': set(),
    #    'e3': {'e7',},
    #    'e7': {'e3',},
    #}
    
    # when rules are described in terms of compatibility
    test_rules = {
                    'e1': {'e1', 'e4', 'e3', 'e7'},
                    'e4': {'e1', 'e4', 'e3', 'e7'},
                    'e3': {'e3','e1', 'e4'},
                    'e7': {'e7', 'e1', 'e4'}
                    }
    
    test_output_set = { frozenset(x) for x in find_all_compatible_partition_brute_force(test_rules) }
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
    assert test, "find_all_compatible_partition_brute_force failed"
    
    test_output_set = set_of_frozenset( [set_of_frozenset(partition) for partition in find_all_partition_not_brute_force(test_rules)] )
    assert test, "find_all_partition_not_brute_force failed"
   
    # when rules are described in terms of incompatibility
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
                  
    # when rules are described in terms of compatibility        
    test_rules = {k: set(test_rules)- v for k,v in test_rules.items()}
    
    
    test_output_set = set_of_frozenset( [set_of_frozenset(partition) for partition in find_all_partition_not_brute_force(test_rules)] )
    true_output_set = { frozenset(x) for x in find_all_compatible_partition_brute_force(test_rules) }

    test = (true_output_set == test_output_set)
    assert test, "find_all_partition_not_brute_force failed"
