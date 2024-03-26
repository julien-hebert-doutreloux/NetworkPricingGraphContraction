from gamma.gamma import Gamma
from unit_test.examples import *
from unit_test.tools import timing_decorator
from unit_test.unit_test_gamma import UNIT_TEST_find_node_partition, UNIT_TEST___call__, UNIT_TEST_problems_image, UNIT_TEST_export_transformation, UNIT_TEST_export, UNIT_TEST_export_transformation_2, UNIT_TEST_from_transformation_pickle
from unit_test.unit_test_common import UNIT_TEST_from_json_to_json
from unit_test.unit_test_partition import UNIT_TEST_powerset_generator, UNIT_TEST_compatible, UNIT_TEST_find_every_compatible_union, UNIT_TEST_find_all_compatible_partition
from unit_test.unit_test_rules import UNIT_TEST_make_rules, UNIT_TEST_Rules_valid, UNIT_TEST_Rules_complement_rules, UNIT_TEST_Rules_ordered_keys_cardinality, UNIT_TEST_Rules_ordered_values_by_affinity, UNIT_TEST_Rules_approx_max_clique

######################################
## UNIT TEST
######################################

@timing_decorator
def main():

    ## TEST GAMMA.PY
    ################
    if True:
        print("TEST GAMMA.PY")
        UNIT_TEST_find_node_partition()
        UNIT_TEST___call__()
        UNIT_TEST_export_transformation()
        UNIT_TEST_export_transformation_2()
        UNIT_TEST_from_transformation_pickle()
        UNIT_TEST_problems_image()
        UNIT_TEST_export()
        print()
        
    ## TEST COMMON.PY
    #################
    if True:
        print("TEST COMMON.PY")
        UNIT_TEST_from_json_to_json()
        print()
        
    ## PARTITION.py
    ###############
    if True:
        print("TEST PARTITION.PY")
        UNIT_TEST_powerset_generator()
        UNIT_TEST_compatible()
        UNIT_TEST_find_every_compatible_union()
        UNIT_TEST_find_all_compatible_partition()
        print()
        
    ## RULES.PY
    ###########
    if True:
        print("TEST RULES.PY")
        #UNIT_TEST_make_rules() 
        UNIT_TEST_Rules_valid()
        UNIT_TEST_Rules_complement_rules()
        UNIT_TEST_Rules_ordered_keys_cardinality()
        UNIT_TEST_Rules_ordered_values_by_affinity()
        UNIT_TEST_Rules_approx_max_clique()
        print()
        
        
    
    
        
    # Graph definition and transformation
    #nodes, edges, edge_partition = exempleX()
    #gamma_test = Gamma(nodes, edges, edge_partition)
    #gamma_test.summary()
    #partition = generate_partitions(edges, 2, 2)
    #print(*[str(set(map(str,cls))) for cls in partition], sep='\n')
    #generate_partitions()
    #print('\n')


if __name__ == "__main__":
    main()
