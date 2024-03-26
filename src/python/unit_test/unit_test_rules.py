from preamble.preamble import *
from gamma.rules import Rules, make_rules, readable_rules
from unit_test.tools import unit_test_decorator
from unit_test.examples import exemple1, exemple3, exemple5
from gamma.partition import compatible

@unit_test_decorator
def UNIT_TEST_make_rules():
    # With H1, H3 and expresse in term of compatibility
    
    _, edges, _, _ = exemple1()
    test_output_rules = make_rules(edges)
    true_output_rules = {
                        edges[3]: {edges[3], edges[7]},
                        edges[7]: {edges[3], edges[7]}
                        }
                        
    test = (true_output_rules == test_output_rules)
    assert test, "make_rules failed"
    
    _, edges, _, _ = exemple3()
    test_output_rules = make_rules(edges)
    true_output_rules = {
                        edges[0] : {edges[0], edges[2], edges[3], edges[6]},
                        edges[2] : {edges[0], edges[2], edges[3], },
                        edges[3] : {edges[0], edges[2], edges[3], edges[6]},
                        edges[6] : {edges[0], edges[3], edges[6], },
                        }
                        
    test = (true_output_rules == test_output_rules)
    assert test, "make_rules failed"
    
    
    _, edges, _, _ = exemple5()
    test_output_rules = make_rules(edges)
    true_output_rules = {
                        edges[0] : {edges[0], edges[2], edges[3], edges[6], edges[7], edges[8], edges[9], edges[10], },#set(),
                        edges[2] : {edges[0], edges[2], edges[3], edges[6], edges[7], edges[8], edges[9], }, #{edges[10], },
                        edges[3] : {edges[0], edges[2], edges[3], edges[6], edges[7], edges[9], edges[10], },#{edges[8], },
                        edges[6] : {edges[0], edges[2], edges[3], edges[6], edges[7], edges[8], edges[10], },#{edges[9], },
                        edges[7] : {edges[0], edges[2], edges[3], edges[6], edges[7], edges[8], edges[9], edges[10], },#set(),
                        edges[8] : {edges[0], edges[2], edges[6], edges[7], edges[8], edges[9], edges[10], },#{edges[3], },
                        edges[9] : {edges[0], edges[2], edges[3], edges[7], edges[8], edges[9], edges[10], },#{edges[6], },
                        edges[10] : {edges[0], edges[3], edges[6], edges[7], edges[8], edges[9], edges[10], },#{edges[2], }
                        }
    test = (true_output_rules == test_output_rules)
    assert test, "make_rules failed"
    
@unit_test_decorator   
def UNIT_TEST_Rules_valid():
    test_rules = {
                'e1': {'e1', 'e4', 'e3', 'e7'},
                'e4': {'e1', 'e4', 'e3', 'e7'},
                'e3': {'e3', 'e1', 'e4'},
                'e7': {'e7', 'e1', 'e4'}
                }
    
    test_rules = Rules(test_rules)
    assert test_rules.valid, "Failed Rules.valid"
    
    
    test_rules = {
                'e1': {'e4', 'e3', 'e7'},
                'e4': {'e1', 'e4', 'e3', 'e7'},
                'e3': {'e3', 'e1', 'e4'},
                'e7': {'e7', 'e1', 'e4'}
                }
    test_rules = Rules(test_rules)
    assert not test_rules.valid, "Failed Rules.valid"
    
    
    test_rules = {
                'e1': {'e1', 'e3', 'e7'},
                'e4': {'e1', 'e4', 'e3', 'e7'},
                'e3': {'e3', 'e1', 'e4'},
                'e7': {'e7', 'e1', 'e4'}
                }
    
    test_rules = Rules(test_rules)
    assert not test_rules.valid, "Failed Rules.valid"
    
    

@unit_test_decorator    
def UNIT_TEST_Rules_complement_rules():

    test_rules = {
            'e1': {'e1', 'e4', 'e3', 'e7'},
            'e4': {'e1', 'e4', 'e3', 'e7'},
            'e3': {'e3', 'e1', 'e4'},
            'e7': {'e7', 'e1', 'e4'}
            }
    
    test_rules = Rules(test_rules)
    complementary_rules = {
            'e1': set(),
            'e4': set(),
            'e3': {'e7', },
            'e7': {'e3', }
            }
            
    assert complementary_rules == test_rules.complement_rules, "Failed Rules.complement_rules"

@unit_test_decorator
def UNIT_TEST_Rules_ordered_keys_cardinality():

    test_rules = {
            'e1': {'e1', 'e4', 'e3', 'e7'},
            'e4': {'e1', 'e4', 'e3', 'e7'},
            'e3': {'e3', 'e1', 'e4'},
            'e7': {'e7', 'e1', 'e4'}
            }
    test_rules = Rules(test_rules)
    
    ordered_keys = [
                        ['e1', 'e4', 'e3', 'e7'],
                        ['e1', 'e4', 'e7', 'e3'],
                        ['e4', 'e1', 'e3', 'e7'],
                        ['e4', 'e1', 'e7', 'e3'],
                    ]
                    
    assert list(test_rules.ordered_keys_cardinality(reverse=True)) in ordered_keys, "Failed Rules.ordered_keys_cardinality"
    
@unit_test_decorator  
def UNIT_TEST_Rules_ordered_values_by_affinity():
    
    test_rules = {
            'e1': {'e1', 'e4', 'e3', 'e7'},
            'e4': {'e1', 'e4', 'e7'},
            'e3': {'e3', 'e1',},
            'e7': {'e7', 'e1', 'e4'}
            }
            
    test_rules = Rules(test_rules)
    true_value = {
                    'e1': [
                            ['e1', 'e4', 'e7', 'e3'],
                            ['e1', 'e7', 'e4', 'e3'],
                        ],
                    'e4': [
                            ['e1', 'e4', 'e7'],
                            ['e1', 'e7', 'e4'],
                            ['e4', 'e1', 'e7'],
                            ['e4', 'e7', 'e1'],
                            ['e7', 'e4', 'e1'],
                            ['e7', 'e1', 'e4'],
                        ],
                    'e3': [
                            ['e1', 'e3'],
                            ['e3', 'e1'],
                        ],
                    'e7': [
                            ['e1', 'e4', 'e7'],
                            ['e1', 'e7', 'e4'],
                            ['e4', 'e1', 'e7'],
                            ['e4', 'e7', 'e1'],
                            ['e7', 'e4', 'e1'],
                            ['e7', 'e1', 'e4'],
                        ],
                }
    test = True
    for key, value in test_rules.ordered_values_by_affinity(reverse=True).items():
        if not value in true_value[key]:
            test = False
    
    assert test, "Failed Rules.ordered_values_by_affinity"
    
@unit_test_decorator    
def UNIT_TEST_Rules_approx_max_clique():

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
    test_rules = {k:v for k, v in test_rules.items() if len(v)>1}
    test_rules = Rules(test_rules)
    
    test = 0
    for _ in range(100):
        result = test_rules.approx_max_clique()
        test += compatible(result, test_rules)
    assert test==100, "Failed Rules.approx_max_clique"
