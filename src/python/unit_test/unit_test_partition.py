from preamble.preamble import *
from gamma.partition import powerset_generator, compatible, find_every_compatible_union,\
                        find_all_compatible_partition_brute_force, compatible_union_not_brute_force,\
                            find_all_partition_not_brute_force
from unit_test.tools import timing_decorator, unit_test_decorator
from gamma.common import set_of_frozenset
from unit_test.examples import exemple1, exemple3, exemple5 

PARAMETERS = config.unit_test_unit_test_partition(__name__)
logger = config.log(**PARAMETERS['logger'])
#########################
## UNIT_TEST_PARTITION.PY
#########################
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
    if not test:
        logger.warning('UNIT_TEST_powerset_generator failed')
    else:
        logger.info('UNIT_TEST_powerset_generator succeeded')
    
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
    test1 = (True == compatible(test_set, test_rules))
    
    test_set = {'e3', 'e7'} # Incompatible
    test2 = (False == compatible(test_set, test_rules))
    
    test_set = {'e1', 'e4', 'e7'} # Compatible
    test3 = (True == compatible(test_set, test_rules))
    
    test_set = {'e1', 'e4', 'e3'} # Compatible
    test4 = (True == compatible(test_set, test_rules))
    
    test_set = {'e1', 'e4', 'e3', 'e7'} # Incompatible
    test5 = (False == compatible(test_set, test_rules))
    
    
    test = (test1 and test2 and test3 and test4 and test5)
    if not test:
        logger.warning('UNIT_TEST_compatible failed')
    else:
        logger.info('UNIT_TEST_compatible succeeded')
        
def UNIT_TEST_find_every_compatible_union():
    # when rules are described in terms of incompatibility
    #test_rules = {
    #    'e1': set(),
    #    'e4': set(),
    #    'e3': {'e7',},
    #    'e7': {'e3',},
    #}
    def UNIT_TEST_1():
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
        
        def UNIT_TEST_find_every_compatible_union():
            test_set = { frozenset(x) for x in find_every_compatible_union(test_rules) }
            test = (true_set == test_set)
            
            if not test:
                logger.warning('UNIT_TEST_find_every_compatible_union.UNIT_TEST_find_every_compatible_union.UNIT_TEST_1 failed')
            else:
                logger.info('UNIT_TEST_find_every_compatible_union.UNIT_TEST_find_every_compatible_union.UNIT_TEST_1 succeeded')
            
        def UNIT_TEST_compatible_union_not_brute_force():
            test_set = set_of_frozenset(compatible_union_not_brute_force(test_rules))
            true_set.remove(frozenset(set()))
            test = (true_set == test_set)
            if not test:
                logger.warning('UNIT_TEST_find_every_compatible_union.UNIT_TEST_compatible_union_not_brute_force.UNIT_TEST_1 failed')
            else:
                logger.info('UNIT_TEST_find_every_compatible_union.UNIT_TEST_compatible_union_not_brute_force.UNIT_TEST_1 succeeded')
                
        UNIT_TEST_find_every_compatible_union()
        UNIT_TEST_compatible_union_not_brute_force()
        
    
    def UNIT_TEST_2():
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
        def UNIT_TEST_find_every_compatible_union():
            test_set = { frozenset(x) for x in find_every_compatible_union(test_rules) }
            test = (true_set == test_set)    
            if not test:
                logger.warning('UNIT_TEST_find_every_compatible_union.UNIT_TEST_find_every_compatible_union.UNIT_TEST_2 failed')
            else:
                logger.info('UNIT_TEST_find_every_compatible_union.UNIT_TEST_find_every_compatible_union.UNIT_TEST_2 succeeded')
                    
        def UNIT_TEST_compatible_union_not_brute_force():
            test_set = set_of_frozenset(compatible_union_not_brute_force(test_rules))
            true_set.remove(frozenset(set()))
            test = (true_set == test_set)    
            if not test:
                logger.warning('UNIT_TEST_find_every_compatible_union.UNIT_TEST_compatible_union_not_brute_force.UNIT_TEST_2 failed')
            else:
                logger.info('UNIT_TEST_find_every_compatible_union.UNIT_TEST_compatible_union_not_brute_force.UNIT_TEST_2 succeeded')
                
    UNIT_TEST_1()
    UNIT_TEST_2()
    
def UNIT_TEST_find_all_compatible_partition():
    # when rules are described in terms of incompatibility
    #test_rules = {
    #    'e1': set(),
    #    'e4': set(),
    #    'e3': {'e7',},
    #    'e7': {'e3',},
    #}
    def UNIT_TEST_1():
        # when rules are described in terms of compatibility
        test_rules = {
                        'e1': {'e1', 'e4', 'e3', 'e7'},
                        'e4': {'e1', 'e4', 'e3', 'e7'},
                        'e3': {'e3','e1', 'e4'},
                        'e7': {'e7', 'e1', 'e4'}
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
            
        def UNIT_TEST_find_all_compatible_partition_brute_force():
            test_output_set = { frozenset(x) for x in find_all_compatible_partition_brute_force(test_rules) }
            
            test = (true_output_set == test_output_set)
            if not test:
                logger.warning('UNIT_TEST_find_all_compatible_partition.UNIT_TEST_find_all_compatible_partition_brute_force.UNIT_TEST_1 failed')
            else:
                logger.info('UNIT_TEST_find_all_compatible_partition.UNIT_TEST_find_all_compatible_partition_brute_force.UNIT_TEST_1 succeeded')
        
        def UNIT_TEST_find_all_partition_not_brute_force():
            test_output_set = set_of_frozenset( [set_of_frozenset(partition) for partition in find_all_partition_not_brute_force(test_rules)] )
            test = (true_output_set == test_output_set)
            if not test:
                logger.warning('UNIT_TEST_find_all_compatible_partition.UNIT_TEST_find_all_partition_not_brute_force.UNIT_TEST_1 failed')
            else:
                logger.info('UNIT_TEST_find_all_compatible_partition.UNIT_TEST_find_all_partition_not_brute_force.UNIT_TEST_1 succeeded')
    
        UNIT_TEST_find_all_compatible_partition_brute_force()
        UNIT_TEST_find_all_partition_not_brute_force()
        
    def UNIT_TEST_2():
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
        
        def UNIT_TEST_find_all_partition_not_brute_force_find_all_compatible_partition_brute_force():
            test_output_set = set_of_frozenset( [set_of_frozenset(partition) for partition in find_all_partition_not_brute_force(test_rules)] )
            true_output_set = { frozenset(x) for x in find_all_compatible_partition_brute_force(test_rules) }

            test = (true_output_set == test_output_set)
            if not test:
                logger.warning('UNIT_TEST_find_all_compatible_partition.UNIT_TEST_find_all_partition_not_brute_force_find_all_compatible_partition_brute_force.UNIT_TEST_2 failed')
            else:
                logger.warning('UNIT_TEST_find_all_compatible_partition.UNIT_TEST_find_all_partition_not_brute_force_find_all_compatible_partition_brute_force.UNIT_TEST_2 succeeded')
        UNIT_TEST_find_all_partition_not_brute_force_find_all_compatible_partition_brute_force()
        
        
    UNIT_TEST_1()
    UNIT_TEST_2()
