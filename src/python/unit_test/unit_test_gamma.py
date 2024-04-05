#####################
## UNIT_TEST_GAMMA.py
#####################
from preamble.preamble import *
from unit_test.examples import *
from unit_test.tools import unit_test_decorator, timing_decorator
from gamma.gamma import Gamma, GammaNPP
from gamma.common import print_columns, from_json, set_of_frozenset

PARAMETERS = config.unit_test_unit_test_gamma(__name__)
logger = config.log(**PARAMETERS['logger'])


def UNIT_TEST_find_node_partition():

    def UNIT_TEST_exemple1():
        ## Example 1
        ############
        nodes, edges, edge_partition, _ = exemple1()
        test_value = Gamma.find_node_partition(edge_partition)
        test_value = set_of_frozenset(test_value)
        
        true_value =[\
                        (nodes[0], ),           # 1
                        (nodes[1], ),           # 2
                        (nodes[2], nodes[4]),   # 3, 5
                        (nodes[3], nodes[5]),   # 4, 6
                        (nodes[6], ),           # 7
                        (nodes[7], ),           # 8
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST_find_node_partition.UNIT_TEST_exemple1 failed')
        else:
            logger.info(f'UNIT_TEST_find_node_partition.UNIT_TEST_exemple1 succeeded')
        
    def UNIT_TEST_exemple2():
        ## Example 2
        ############
        nodes, edges, edge_partition, _ = exemple2()
            
        test_value = Gamma.find_node_partition(edge_partition)
        test_value = set_of_frozenset(test_value)
        
        true_value =[\
                        (nodes[0], nodes[2]),   # 1, 3
                        (nodes[1], nodes[3]),   # 2, 4
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST_find_node_partition.UNIT_TEST_exemple2 failed')
        else:
            logger.info(f'UNIT_TEST_find_node_partition.UNIT_TEST_exemple2 succeeded')
        
    def UNIT_TEST_exemple3():
        ## Example 3
        ############
        nodes, edges, edge_partition, _ = exemple3()
            
        test_value = Gamma.find_node_partition(edge_partition)
        test_value = set_of_frozenset(test_value)
        
        true_value =[\
                        (nodes[0], nodes[1]),           # 1, 2
                        (nodes[5], nodes[6], nodes[7]), # u, v, w
                        (nodes[2], nodes[3]),           # 3, 4
                        (nodes[4],),                    # 5
                        
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST_find_node_partition.UNIT_TEST_exemple3 failed')
        else:
            logger.info(f'UNIT_TEST_find_node_partition.UNIT_TEST_exemple3 succeeded')
        
    def UNIT_TEST_exemple5():
        ## Example 5
        ############
        nodes, edges, edge_partition, _ = exemple5()
            
        test_value = Gamma.find_node_partition(edge_partition)
        test_value = set_of_frozenset(test_value)
        
        true_value =[\
                        (nodes[0], nodes[1]),           # 1, 2
                        (nodes[2], nodes[3]),           # 3, 4
                        (nodes[4], nodes[5],),          # 5, 6
                        (nodes[6], nodes[7]),           # 7, 8
                        (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), # u, v, w, gamma, epsilon
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST_find_node_partition.UNIT_TEST_exemple5 failed')
        else:
            logger.info(f'UNIT_TEST_find_node_partition.UNIT_TEST_exemple5 succeeded')
        
    def UNIT_TEST_exempleX():
        ## Example X
        ############
        nodes, edges, edge_partition, _ = exempleX()
            
        test_value = Gamma.find_node_partition(edge_partition)
        test_value = set_of_frozenset(test_value)

        true_value =[\
                        (nodes[0],),    # 1
                        (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]),   #2, 3, 5, 7, 9, 10, 11
                        (nodes[3],),    # 4
                        (nodes[5],),    # 6    
                        (nodes[7],),    # 8
                        (nodes[11],),   # 12
                        (nodes[12],),   # 14
                        (nodes[13],),   # 15
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST_find_node_partition.UNIT_TEST_exempleX failed')
        else:
            logger.info(f'UNIT_TEST_find_node_partition.UNIT_TEST_exempleX succeeded')
        #if true_value != test_value:
        #    tst = [str(set(map(str,cls))) for cls in test_value]
        #    tru = [str(set(map(str,cls))) for cls in true_value]
        #    print_columns(tst, tru, headers=['test', 'true'])
        #    input()
        
    def UNIT_TEST_exempleXI():
        ## Example XI
        #############
        nodes, edges, edge_partition, _ = exempleXI()
            
        test_value = Gamma.find_node_partition(edge_partition)
        test_value = set_of_frozenset(test_value)

        true_value =[\
                        (nodes[0],),    # 1
                        (nodes[1],),    # 2
                        (nodes[2], nodes[4]),    # 3, 5
                        (nodes[3],),    # 4
                        (nodes[5],),    # 6
                        (nodes[6],),    # 7
                        (nodes[7], nodes[11]),    # 8, 12
                        (nodes[8], nodes[10]),    # 9, 11
                        (nodes[9],),    # 10
                        (nodes[12],),   # 14
                        (nodes[13],),   # 15
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST_find_node_partition.UNIT_TEST_exempleXI failed')
        else:
            logger.info(f'UNIT_TEST_find_node_partition.UNIT_TEST_exempleXI succeeded')
    
    UNIT_TEST_exemple1()
    UNIT_TEST_exemple2()
    UNIT_TEST_exemple3()
    UNIT_TEST_exemple5()
    UNIT_TEST_exempleX()
    UNIT_TEST_exempleXI()
    
    
def UNIT_TEST___call__():
    
    def UNIT_TEST_exemple1():
        ## Example 1
        ############
        nodes, edges, edge_partition, _ = exemple1()
        gamma_test = Gamma(nodes, edges, edge_partition)
        
        ## Node
        #######
        test_value = [gamma_test(x).value for x in nodes]
        test_value = set_of_frozenset(test_value)
        
        true_value = [
                        (nodes[0], ),           #γ(v1) : [v1]
                        (nodes[1], ),           #γ(v2) : [v2]
                        (nodes[2], nodes[4]),   #γ(v3) : [v3, v5]
                        (nodes[3], nodes[5]),   #γ(v4) : [v4, v6]
                        (nodes[2], nodes[4]),   #γ(v5) : [v3, v5]
                        (nodes[3], nodes[5]),   #γ(v6) : [v4, v6]
                        (nodes[6], ),           #γ(v7) : [v7]
                        (nodes[7], ),           #γ(v8) : [v8]
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exemple1 Node failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exemple1 Node succeeded')
        
        ## Edge
        #######
        test_value = [(gamma_test(x).src.value, gamma_test(x).dst.value) for x in edges]
        test_value = set_of_frozenset(map(set_of_frozenset, test_value))
        true_value = [
            ((nodes[0], ), (nodes[1], )),                   #γ(e1): [v1] - > [v2]
            ((nodes[0], ), (nodes[2], nodes[4])),           #γ(e2): [v1] - > [v3]
            ((nodes[0], ), (nodes[3], nodes[5])),           #γ(e3): [v1] - > [v4]
            ((nodes[2], nodes[4]), (nodes[3], nodes[5])),   #γ(e4): [v3] - > [v4]
            ((nodes[3], nodes[5]), (nodes[2], nodes[4])),   #γ(e5): [v4] - > [v5]
            ((nodes[3], nodes[5]), (nodes[7], )),           #γ(e6): [v4] - > [v8]
            ((nodes[2], nodes[4]), (nodes[1], )),           #γ(e7): [v5] - > [v2]
            ((nodes[2], nodes[4]), (nodes[3], nodes[5])),   #γ(e8): [v5] - > [v6]
            ((nodes[3], nodes[5]), (nodes[1], )),           #γ(e9): [v6] - > [v2]
            ((nodes[3], nodes[5]), (nodes[7], )),           #γ(e10): [v6] - > [v8]
            ((nodes[6], ), (nodes[2], nodes[4])),           #γ(e11): [v7] - > [v3]
            ((nodes[6], ), (nodes[2], nodes[4])),           #γ(e12): [v7] - > [v5]
            ((nodes[6], ), (nodes[7], )),                   #γ(e13): [v7] - > [v8]
        ]
        true_value = set_of_frozenset(map(set_of_frozenset, true_value))
        test = (true_value == test_value)
        #parallel test
        test_para = (gamma_test(edges[5]) != gamma_test(edges[9]))
        
        if not (test and test_para):
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exemple1 Edge failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exemple1 Edge succeeded')
        
    def UNIT_TEST_exemple2():
        ## Example 2
        ############
        nodes, edges, edge_partition, _ = exemple2()
        gamma_test = Gamma(nodes, edges, edge_partition)
        
        ## Node
        #######
        test_value = [gamma_test(x).value for x in nodes]
        test_value = set_of_frozenset(test_value)

        true_value = [
                        (nodes[0], nodes[2]),   #γ(v1) = [v1] : {v1, v3}
                        (nodes[1], nodes[3]),   #γ(v2) = [v2] : {v2, v4}
                        (nodes[0], nodes[2]),   #γ(v3) = [v3] : {v1, v3}
                        (nodes[1], nodes[3]),   #γ(v4) = [v4] : {v2, v4}
                    ]
                    
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exemple2 Node failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exemple2 Node succeeded')
        
        ## Edge
        #######
        test_value = [(gamma_test(x).src.value, gamma_test(x).dst.value) for x in edges]
        test_value = set_of_frozenset(map(set_of_frozenset, test_value))
        true_value = [
            ((nodes[0], nodes[2]), (nodes[1], nodes[3])),   #γ(e1): [v1] - > [v2]
            ((nodes[1], nodes[3]), (nodes[1], nodes[3])),   #γ(e2): [v2] - > [v4]
            ((nodes[1], nodes[3]), (nodes[0], nodes[2])),   #γ(e3): [v2] - > [v3]
            ((nodes[0], nodes[2]), (nodes[1], nodes[3])),   #γ(e4): [v3] - > [v4]
        ]
        true_value = set_of_frozenset(map(set_of_frozenset, true_value))
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exemple2 Edge failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exemple2 Edge succeeded')
        
        
    def UNIT_TEST_exemple3():
        ## Example 3
        ############
        nodes, edges, edge_partition, _ = exemple3()
        gamma_test = Gamma(nodes, edges, edge_partition)
        
        ## Node
        #######
        test_value = [gamma_test(x).value for x in nodes]
        test_value = set_of_frozenset(test_value)
        
        true_value = [
                        (nodes[0], nodes[1]),   #γ(v1) = [v1] : {v1, v2}
                        (nodes[0], nodes[1]),   #γ(v2) = [v2] : {v1, v2}
                        (nodes[2], nodes[3]),   #γ(v3) = [v3] : {v3, v4}
                        (nodes[2], nodes[3]),   #γ(v4) = [v4] : {v3, v4}
                        (nodes[4],),            #γ(v5) = [v5] : {v5}
                        (nodes[5], nodes[6], nodes[7]), #γ(u) = [u] : {u, v, w}
                        (nodes[5], nodes[6], nodes[7]), #γ(v) = [v] : {u, v, w}
                        (nodes[5], nodes[6], nodes[7]), #γ(w) = [w] : {u, v, w}
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exemple3 Node failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exemple3 Node succeeded')
        
        ## Edge
        #######
        test_value = [(gamma_test(x).src.value, gamma_test(x).dst.value) for x in edges]
        test_value = set_of_frozenset(map(set_of_frozenset, test_value))
        true_value = [
            ((nodes[0], nodes[1]), (nodes[5], nodes[6], nodes[7])), #γ(e1): [v1] - > [u]
            ((nodes[0], nodes[1]), (nodes[0], nodes[1])),           #γ(e2): [v1] - > [v2
            ((nodes[5], nodes[6], nodes[7]), (nodes[2], nodes[3])), #γ(e3): [v] - > [v3]
            ((nodes[5], nodes[6], nodes[7]),(nodes[2], nodes[3])),  #γ(e4): [w] - > [v4]
            ((nodes[0], nodes[1]), (nodes[4],)),                    #γ(e5): [v2] - > [v5]
            ((nodes[4],), (nodes[5], nodes[6], nodes[7])),          #γ(e9): [v5] - > [w]
            ((nodes[0], nodes[1]), (nodes[5], nodes[6], nodes[7])), #γ(e11): [v2] - > [v]
        ]
        true_value = set_of_frozenset(map(set_of_frozenset, true_value))
        
        if test_value != true_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exemple3 Edge failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exemple3 Edge succeeded')
        
    def UNIT_TEST_exemple5():
        ## Example 5
        ############
        nodes, edges, edge_partition, _ = exemple5()
        gamma_test = Gamma(nodes, edges, edge_partition)
        
        ## Node
        #######
        test_value = [gamma_test(x).value for x in nodes]
        test_value = set_of_frozenset(test_value)

        true_value = [
                        (nodes[0], nodes[1]),   #γ(v1) = [v1] : {v1, v2}
                        (nodes[0], nodes[1]),   #γ(v2) = [v2] : {v1, v2}
                        (nodes[2], nodes[3]),   #γ(v3) = [v3] : {v3, v4}
                        (nodes[2], nodes[3]),   #γ(v4) = [v4] : {v3, v4}
                        (nodes[4], nodes[5]),   #γ(v5) = [v5] : {v5, v6}
                        (nodes[4], nodes[5]),   #γ(v6) = [v6] : {v5, v6}
                        (nodes[6], nodes[7]),   #γ(v7) = [v7] : {v7, v8}
                        (nodes[6], nodes[7]),   #γ(v8) = [v8] : {v7, v8}
                        (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), #γ(u) = [u] : {u, v, w, γ, ξ}
                        (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), #γ(v) = [v] : {u, v, w, γ, ξ}
                        (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), #γ(w) = [w] : {u, v, w, γ, ξ}
                        (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), #γ(γ) = [γ] : {u, v, w, γ, ξ}
                        (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), #γ(ξ) = [ξ] : {u, v, w, γ, ξ}
                    ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exemple5 Node failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exemple5 Node succeeded')
        
        ## Edge
        #######
        test_value = [(gamma_test(x).src.value, gamma_test(x).dst.value) for x in edges]
        test_value = set_of_frozenset(map(set_of_frozenset, test_value))
        true_value = [
            ((nodes[0], nodes[1]), (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12])),  #γ(e1): [v1] - > [u]
            ((nodes[0], nodes[1]), (nodes[0], nodes[1])),                                   #γ(e2): [v1] - > [v2]
            ((nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), (nodes[2], nodes[3])),  #γ(e3): [v] - > [v3]
            ((nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), (nodes[2], nodes[3])),  #γ(e4): [w] - > [v4]
            ((nodes[0], nodes[1]), (nodes[4], nodes[5])),                                   #γ(e5): [v2] - > [v5]
            ((nodes[4], nodes[5]), (nodes[4], nodes[5])),                                   #γ(e6): [v5] - > [v6]
            ((nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), (nodes[6], nodes[7])),  #γ(e7): [ξ] - > [v7]
            ((nodes[8], nodes[9], nodes[10], nodes[11], nodes[12]), (nodes[6], nodes[7])),  #γ(e8): [γ] - > [v8]
            ((nodes[4], nodes[5]), (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12])),  #γ(e9): [v5] - > [w]
            ((nodes[4], nodes[5]), (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12])),  #γ(e10): [v6] - > [ξ]
            ((nodes[0], nodes[1]), (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12])),  #γ(e11): [v2] - > [v]
            ((nodes[4], nodes[5]), (nodes[8], nodes[9], nodes[10], nodes[11], nodes[12])),  #γ(e12): [v6] - > [γ]
        ]
        true_value = set_of_frozenset(map(set_of_frozenset, true_value))

        if test_value != true_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exemple5 Edge failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exemple5 Edge succeeded')
        
    def UNIT_TEST_exempleX():
        ## Example X
        ############
        nodes, edges, edge_partition, _ = exempleX()
        gamma_test = Gamma(nodes, edges, edge_partition)
        
        ## Node
        #######
        test_value = [gamma_test(x).value for x in nodes]
        test_value = set_of_frozenset(test_value)
        
        true_value = [
                (nodes[0], ),                                                               #γ(v1) = [v1] : {v1}
                (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]),    #γ(v2) = [v2] : {v2, v3, v5, v7, v9, v10, v11}
                (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]),    #γ(v3) = [v3] : {v2, v3, v5, v7, v9, v10, v11}
                (nodes[3], ),                                                               #γ(v4) = [v4] : {v4}
                (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]),    #γ(v5) = [v5] : {v2, v3, v5, v7, v9, v10, v11}
                (nodes[5], ),                                                               #γ(v6) = [v6] : {v6}
                (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]),    #γ(v7) = [v7] : {v2, v3, v5, v7, v9, v10, v11}
                (nodes[7], ),                                                               #γ(v8) = [v8] : {v8}
                (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]),    #γ(v9) = [v9] : {v2, v3, v5, v7, v9, v10, v11}
                (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]),    #γ(v10) = [v10] : {v2, v3, v5, v7, v9, v10, v11}
                (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]),    #γ(v11) = [v11] : {v2, v3, v5, v7, v9, v10, v11}
                (nodes[11], ),                                                              #γ(v12) = [v12] : {v12}
                (nodes[12], ),                                                              #γ(v14) = [v14] : {v14}
                (nodes[13], ),                                                              #γ(v15) = [v15] : {v15}
            ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exempleX Node failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exempleX Node succeeded')
        
        
        ## Edge
        #######
        test_value = [(gamma_test(x).src.value, gamma_test(x).dst.value) for x in edges]
        test_value = set_of_frozenset(map(set_of_frozenset, test_value))
        true_value = [
            ((nodes[0], ), (nodes[11], )),      #γ(e1): [v1] - > [v12]
            ((nodes[0], ), (nodes[7], )),       #γ(e2): [v1] - > [v8]
            ((nodes[5], ), (nodes[11], ), ),    #γ(e3): [v6] - > [v12]
            ((nodes[0], ), (nodes[5], )),       #γ(e4): [v1] - > [v6]
            ((nodes[7], ), (nodes[11], )),      #γ(e5): [v8] - > [v12]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[5], )),    #γ(e6): [v2] - > [v6]
            ((nodes[11], ), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])),   #γ(e7): [v12] - > [v9]
            ((nodes[5], ), (nodes[12], )),                                                              #γ(e8): [v6] - > [v14]
            ((nodes[7], ), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])),    #γ(e9): [v8] - > [v11]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[12], )),   #γ(e10): [v2] - > [v14]
            ((nodes[12], ), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])),   #γ(e11): [v14] - > [v7]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])), #γ(e12): [v2] - > [v10]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])), #γ(e13): [v9] - > [v10]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])), #γ(e14): [v7] - > [v5]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])), #γ(e15): [v10] - > [v5]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])), #γ(e16): [v9] - > [v11]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])), #γ(e17): [v10] - > [v3]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])), #γ(e18): [v3] - > [v5]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[3], )),    #γ(e19): [v3] - > [v4]
            ((nodes[13], ), (nodes[3], )),                                                              #γ(e20): [v15] - > [v4]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[13], )),   #γ(e21): [v5] - > [v15]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[13], )),   #γ(e22): [v3] - > [v15]
            ((nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10]), (nodes[1], nodes[2], nodes[4], nodes[6], nodes[8], nodes[9], nodes[10])), #γ(e23): [v11] - > [v3]
        ]
        true_value = set_of_frozenset(map(set_of_frozenset, true_value))

        if test_value != true_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exempleX Edge failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exempleX Edge succeeded')
        
    def UNIT_TEST_exempleXI():
        ## Example XI
        ############
        nodes, edges, edge_partition, _ = exempleXI()
        gamma_test = Gamma(nodes, edges, edge_partition)
        
        ## Node
        #######
        test_value = [gamma_test(x).value for x in nodes]
        test_value = set_of_frozenset(test_value)

        true_value = [
                (nodes[0], ),               #γ(v1) = [v1] : {v1}
                (nodes[1],),                #γ(v2) = [v2] : {v2}
                (nodes[2], nodes[4]),       #γ(v3) = [v3] : {v3, v5}
                (nodes[3], ),               #γ(v4) = [v4] : {v4}
                (nodes[2], nodes[4]),       #γ(v5) = [v5] : {v3, v5}
                (nodes[5], ),               #γ(v6) = [v6] : {v6}
                (nodes[6], ),               #γ(v7) = [v7] : {v7}
                (nodes[7], nodes[11]),      #γ(v8) = [v8] : {v8, v12}
                (nodes[8], nodes[10]),      #γ(v9) = [v9] : {v9, v11}
                (nodes[9], ),               #γ(v10) = [v10] : {v10}
                (nodes[8], nodes[10]),      #γ(v11) = [v9] : {v9, v11}
                (nodes[7], nodes[11]),      #γ(v12) = [v8] : {v8, v12}
                (nodes[12], ),              #γ(v14) = [v14] : {v14}
                (nodes[13], ),              #γ(v15) = [v15] : {v15}
            ]
        true_value = set_of_frozenset(true_value)
        
        if true_value != test_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exempleXI Node failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exempleXI Node succeeded')
        
        
        ## Edge
        #######
        test_value = [(gamma_test(x).src.value, gamma_test(x).dst.value) for x in edges]
        test_value = set_of_frozenset(map(set_of_frozenset, test_value))
        true_value = [
            ((nodes[0], ), (nodes[7], nodes[11])),          #γ(e1): [v1] - > [v8]
            ((nodes[0], ), (nodes[7], nodes[11])),          #γ(e2): [v1] - > [v12]
            ((nodes[0], ), (nodes[5], )),                   #γ(e3): [v1] - > [v6]
            ((nodes[7], nodes[11]), (nodes[8], nodes[10])), #γ(e4): [v8] - > [v11]
            ((nodes[7], nodes[11]), (nodes[7], nodes[11])), #γ(e5): [v8] - > [v12]
            ((nodes[7], nodes[11]), (nodes[8], nodes[10])), #γ(e6): [v12] - > [v9]
            ((nodes[5], ), (nodes[7], nodes[11])),          #γ(e7): [v6] - > [v12]
            ((nodes[5], ), (nodes[12], )),                  #γ(e8): [v6] - > [v14]
            ((nodes[1],), (nodes[5], )),                    #γ(e9): [v2] - > [v6]
            ((nodes[8], nodes[10]) ,(nodes[2], nodes[4])),  #γ(e10): [v11] - > [v3]
            ((nodes[8], nodes[10]), (nodes[8], nodes[10])), #γ(e11): [v9] - > [v11]
            ((nodes[8], nodes[10]), (nodes[9],)),           #γ(e12): [v9] - > [v10]
            ((nodes[1],), (nodes[12], )),                   #γ(e13): [v2] - > [v14]
            ((nodes[12], ), (nodes[6],)),                   #γ(e14): [v14] - > [v7]
            ((nodes[1],), (nodes[9],)),                     #γ(e15): [v2] - > [v10]
            ((nodes[2], nodes[4]), (nodes[3], )),           #γ(e16): [v3] - > [v4]
            ((nodes[2], nodes[4]), ),                       #γ(e17): [v3] - > [v15]
            ((nodes[2], nodes[4]), (nodes[2], nodes[4])),   #γ(e18): [v3] - > [v5]
            ((nodes[9],), (nodes[2], nodes[4])),            #γ(e19): [v10] - > [v3]
            ((nodes[9],), (nodes[2], nodes[4])),            #γ(e20): [v10] - > [v5]
            ((nodes[6],), (nodes[2], nodes[4])),            #γ(e21): [v7] - > [v5]
            ((nodes[13], ), (nodes[3], )),                  #γ(e22): [v15] - > [v4]
            ((nodes[2], nodes[4]), (nodes[13], )),          #γ(e23): [v5] - > [v15]
        ]
        true_value = set_of_frozenset(map(set_of_frozenset, true_value))
        
        if test_value != true_value:
            logger.warning(f'UNIT_TEST___call__.UNIT_TEST_exempleXI Edge failed')
        else:
            logger.info(f'UNIT_TEST___call__.UNIT_TEST_exempleXI Edge succeeded')
        
    UNIT_TEST_exemple1()
    UNIT_TEST_exemple2()
    UNIT_TEST_exemple3()
    UNIT_TEST_exemple5()
    UNIT_TEST_exempleX()
    UNIT_TEST_exempleXI()
 
def UNIT_TEST_export_transformation():

    def UNIT_TEST_exemple1():
        nodes, edges, edge_partition, _ = exemple1()
        gamma = Gamma(nodes, edges, edge_partition)
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple1_partition'
        gamma.export_transformation(directory, filename)
        
        input_file = os.path.join(directory, f"{filename}.pkl")
        
        with open(input_file, 'rb') as f:
            test_partition = pickle.load(f)
        
        true_partition = set_of_frozenset( [
                            (1,),
                            (2,),
                            (3,),
                            (5,),
                            (6,),
                            (7,),
                            (4, 8,),
                            (9,),
                            (10,),
                            (11,),
                            (12,),
                            (13,),
                        ])
        test_partition = set_of_frozenset(test_partition['RA'])
        test = (true_partition == test_partition)
        
        if not test:
            logger.warning(f'UNIT_TEST_export_transformation.UNIT_TEST_exemple1 failed')
        else:
            logger.info(f'UNIT_TEST_export_transformation.UNIT_TEST_exemple1 succeeded')
            
        if os.path.isfile(input_file):
            os.remove(input_file)
        
            
    def UNIT_TEST_exemple2():
        nodes, edges, edge_partition, _ = exemple2()
        gamma = Gamma(nodes, edges, edge_partition)
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple2_partition'
        gamma.export_transformation(directory, filename)
        
        input_file = os.path.join(directory, f"{filename}.pkl")
        
        with open(input_file, 'rb') as f:
            test_partition = pickle.load(f)
        
        true_partition = set_of_frozenset([
                        {1, 4},
                        {2,},
                        {3,}
                        ])
                        
        test_partition = set_of_frozenset(test_partition['RA'])
        test = (true_partition == test_partition)
        
        if not test:
            logger.warning(f'UNIT_TEST_export_transformation.UNIT_TEST_exemple2 failed')
        else:
            logger.info(f'UNIT_TEST_export_transformation.UNIT_TEST_exemple2 succeeded')
        
        if os.path.isfile(input_file):
            os.remove(input_file)
            
            
    def UNIT_TEST_exemple3():
        nodes, edges, edge_partition, _ = exemple3()
        gamma = Gamma(nodes, edges, edge_partition)
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple3_partition'
        gamma.export_transformation(directory, filename)
        
        input_file = os.path.join(directory, f"{filename}.pkl")
        
        with open(input_file, 'rb') as f:
            test_partition = pickle.load(f)
        
        true_partition =  set_of_frozenset([
                            (1, 7),
                            (3, 4),
                            (2,),
                            (5,),
                            (6,)    
                        ])
        test_partition = set_of_frozenset(test_partition['RA'])
        test = (true_partition == test_partition)
        if not test:
            logger.warning(f'UNIT_TEST_export_transformation.UNIT_TEST_exemple3 failed')
        else:
            logger.info(f'UNIT_TEST_export_transformation.UNIT_TEST_exemple3 succeeded')
        
        if os.path.isfile(input_file):
            os.remove(input_file)
            
    def UNIT_TEST_exemple5():
        nodes, edges, edge_partition, _ = exemple5()
        gamma = Gamma(nodes, edges, edge_partition)
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple5_partition'
        gamma.export_transformation(directory, filename)
        
        input_file = os.path.join(directory, f"{filename}.pkl")
        
        with open(input_file, 'rb') as f:
            test_partition = pickle.load(f)
        
        true_partition =  set_of_frozenset([
                            (1, 11),
                            (3, 4),
                            (2,),
                            (5,),
                            (6,),
                            (7, 8),
                            (9, 10),
                            (12,)
                        ])
                        
        test_partition = set_of_frozenset(test_partition['RA'])
        test = (true_partition == test_partition)
        if not test:
            logger.warning(f'UNIT_TEST_export_transformation.UNIT_TEST_exemple5 failed')
        else:
            logger.info(f'UNIT_TEST_export_transformation.UNIT_TEST_exemple5 succeeded')
        
        if os.path.isfile(input_file):
            os.remove(input_file)
            
    def UNIT_TEST_exempleX():
        nodes, edges, edge_partition, _ = exempleX()
        gamma = Gamma(nodes, edges, edge_partition)
        
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exempleX_partition'
        gamma.export_transformation(directory, filename)
        
        input_file = os.path.join(directory, f"{filename}.pkl")
        
        with open(input_file, 'rb') as f:
            test_partition = pickle.load(f)
        
        true_partition =  set_of_frozenset([
                            (1,),
                            (2,),
                            (3,),
                            (4,),
                            (5,),
                            (6,),
                            (7,),
                            (8,),
                            (9,),
                            (10,),
                            (11,),
                            (13,),
                            (15,),
                            (18,),
                            (19,),
                            (20,),
                            (21,),
                            (22,),
                            (12, 23),
                            (14, 16, 17),
                            ])
                            
        test_partition = set_of_frozenset(test_partition['RA'])
        test = (true_partition == test_partition)
        if not test:
            logger.warning(f'UNIT_TEST_export_transformation.UNIT_TEST_exempleX failed')
        else:
            logger.info(f'UNIT_TEST_export_transformation.UNIT_TEST_exempleX succeeded')
        
        if os.path.isfile(input_file):
            os.remove(input_file)
            
    
    def UNIT_TEST_exempleXI():
        nodes, edges, edge_partition, _ = exempleXI()
        gamma = Gamma(nodes, edges, edge_partition)
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exempleXI_partition'
        gamma.export_transformation(directory, filename)
        
        input_file = os.path.join(directory, f"{filename}.pkl")
        
        with open(input_file, 'rb') as f:
            test_partition = pickle.load(f)
        
        true_partition =  set_of_frozenset([
                            (1,),
                            (2,),
                            (3,),
                            (5,),
                            (7,),
                            (8,),
                            (9,),
                            (10,),
                            (11,),
                            (12,),
                            (13,),
                            (14,),
                            (15,),
                            (16,),
                            (17,),
                            (18,),
                            (21,),
                            (22,),
                            (23,),
                            (19, 20,),
                            (4, 6,),
                            ])
        test_partition = set_of_frozenset(test_partition['RA'])
        test = (true_partition == test_partition)
        if not test:
            logger.warning(f'UNIT_TEST_export_transformation.UNIT_TEST_exempleXI failed')
        else:
            logger.info(f'UNIT_TEST_export_transformation.UNIT_TEST_exempleXI succeeded')
        
        if os.path.isfile(input_file):
            os.remove(input_file)

    UNIT_TEST_exemple1()
    UNIT_TEST_exemple2()
    UNIT_TEST_exemple3()
    UNIT_TEST_exemple5()
    UNIT_TEST_exempleX()
    UNIT_TEST_exempleXI()
    
    
def UNIT_TEST_problems_image():
    
        #      [  {
        #        "orig": 1,
        #        "dest": 4,
        #        "demand": 1.0
        #    },... ]
        
    def UNIT_TEST_exemple1():
        nodes, edges, edge_partition, problems = exemple1()
                
        #  Nodes |           Edges |              γ(Edges) |        γ(Nodes) | Edge partition
        #--------------------------------------------------------------------------------------
        #v1 : v1 |  e1 : v1 --> v2 |  [e1] : [v1] --> [v2] |     [v1] : {v1} |         {'e1'}
        #v2 : v2 |  e2 : v1 --> v3 |  [e2] : [v1] --> [v3] |     [v2] : {v2} |         {'e2'}
        #v3 : v3 |  e3 : v1 --> v4 |  [e3] : [v1] --> [v4] | [v3] : {v5, v3} |         {'e3'}
        #v4 : v4 |  e4 : v3 --> v4 |  [e4] : [v3] --> [v4] | [v4] : {v4, v6} |         {'e5'}
        #v5 : v5 |  e5 : v4 --> v5 |  [e5] : [v4] --> [v3] |     [v7] : {v7} |         {'e6'}
        #v6 : v6 |  e6 : v4 --> v8 |  [e6] : [v4] --> [v8] |     [v8] : {v8} |         {'e7'}
        #v7 : v7 |  e7 : v5 --> v2 |  [e7] : [v3] --> [v2] |                 |   {'e4', 'e8'}
        #v8 : v8 |  e8 : v5 --> v6 |  [e9] : [v4] --> [v2] |                 |         {'e9'}
        #        |  e9 : v6 --> v2 | [e10] : [v4] --> [v8] |                 |        {'e10'}
        #        | e10 : v6 --> v8 | [e11] : [v7] --> [v3] |                 |        {'e11'}
        #        | e11 : v7 --> v3 | [e12] : [v7] --> [v3] |                 |        {'e12'}
        #        | e12 : v7 --> v5 | [e13] : [v7] --> [v8] |                 |        {'e13'}
        #        | e13 : v7 --> v8 |                       |                 |               
        #V -> I_V | ~V -> I_{~V} | A -> I_A | ~A -> I_{~A} | I_V -> I_{~V} | I_A -> I_{~A}
        #-----------------------------------------------------------------------------------
        #   v1->1 |      [v1]->1 |    e1->1 |      [e1]->1 |          1->1 |          1->1
        #   v2->2 |      [v2]->2 |    e2->2 |      [e2]->2 |          2->2 |          2->2
        #   v3->3 |      [v3]->3 |    e3->3 |      [e3]->3 |          3->3 |          3->3
        #   v4->4 |      [v4]->4 |    e4->4 |      [e4]->4 |          4->4 |          4->4
        #   v5->5 |      [v7]->5 |    e5->5 |      [e5]->5 |          5->3 |          5->5
        #   v6->6 |      [v8]->6 |    e6->6 |      [e6]->6 |          6->4 |          6->6
        #   v7->7 |              |    e7->7 |      [e7]->7 |          7->5 |          7->7
        #   v8->8 |              |    e8->8 |      [e9]->8 |          8->6 |          8->4
        #         |              |    e9->9 |     [e10]->9 |               |          9->8
        #         |              |  e10->10 |    [e11]->10 |               |         10->9
        #         |              |  e11->11 |    [e12]->11 |               |        11->10
        #         |              |  e12->12 |    [e13]->12 |               |        12->11
        #         |              |  e13->13 |              |               |        13->12
        
        
        g_gamma = GammaNPP(nodes, edges, edge_partition, problems)
        true_problems_image = [
                {
                    "orig": g_gamma(nodes[0]),
                    "dest": g_gamma(nodes[2]),
                    "demand":5,
                },
                {
                    "orig": g_gamma(nodes[2]),
                    "dest": g_gamma(nodes[3]),
                    "demand":1,
                }
        ]
        
        test_problems_image = g_gamma.problems_image
        
        test = (true_problems_image == test_problems_image)
        if not test:
            logger.warning(f'UNIT_TEST_problems_image.UNIT_TEST_exemple1 failed')
        else:
            logger.info(f'UNIT_TEST_problems_image.UNIT_TEST_exemple1 succeeded')
        
    def UNIT_TEST_exemple2():
        nodes, edges, edge_partition, problems = exemple2()
        g_gamma = GammaNPP(nodes, edges, edge_partition, problems)
        
        #  Nodes |          Edges |             γ(Edges) |        γ(Nodes) | Edge partition
        #------------------------------------------------------------------------------------
        #v1 : v1 | e1 : v1 --> v2 | [e1] : [v1] --> [v2] | [v1] : {v3, v1} |   {'e4', 'e1'}
        #v2 : v2 | e2 : v2 --> v4 | [e2] : [v2] --> [v2] | [v2] : {v4, v2} |         {'e2'}
        #v3 : v3 | e3 : v2 --> v3 | [e3] : [v2] --> [v1] |                 |         {'e3'}
        #v4 : v4 | e4 : v3 --> v4 |                      |                 |               
        #V -> I_V | ~V -> I_{~V} | A -> I_A | ~A -> I_{~A} | I_V -> I_{~V} | I_A -> I_{~A}
        #-----------------------------------------------------------------------------------
        #   v1->1 |      [v1]->1 |    e1->1 |      [e1]->1 |          1->1 |          1->1
        #   v2->2 |      [v2]->2 |    e2->2 |      [e2]->2 |          2->2 |          2->2
        #   v3->3 |              |    e3->3 |      [e3]->3 |          3->1 |          3->3
        #   v4->4 |              |    e4->4 |              |          4->2 |          4->1
        
        true_problems_image = [
                        {
                            "orig": g_gamma(nodes[0]),
                            "dest": g_gamma(nodes[0]),
                            "demand":2,
                        },
                        {
                            "orig": g_gamma(nodes[0]),
                            "dest": g_gamma(nodes[1]), # or g_gamma(nodes[3]) because it is the same node in the transformed space,
                            "demand":4,
                        },
                    ]
        test_problems_image = g_gamma.problems_image
        test = (true_problems_image == test_problems_image)
        if not test:
            logger.warning(f'UNIT_TEST_problems_image.UNIT_TEST_exemple2 failed')
        else:
            logger.info(f'UNIT_TEST_problems_image.UNIT_TEST_exemple2 succeeded')
    

    UNIT_TEST_exemple1()
    UNIT_TEST_exemple2()


def UNIT_TEST_export():
    
    def UNIT_TEST_exemple1():
        # import example
        nodes, edges, edge_partition, _ = exemple1()
        problems = [
                    {
                        "orig": nodes[0],
                        "dest": nodes[2],
                        "demand":2,
                    },
                    {
                        "orig": nodes[0],
                        "dest": nodes[4],
                        "demand":3,
                    },
                    {
                        "orig": nodes[2],
                        "dest": nodes[5],
                        "demand":1,
                    }
                ]
        
        g_gamma = GammaNPP(nodes, edges, edge_partition, problems)
        
        
        # Export transformed problem
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple1_export'
        output_file = os.path.join(directory, f"{filename}.json")
        
        g_gamma.export(directory, filename)
        
        # Verify that the integrity of the problem before and after export 
        nodes, edges, problems = from_json(output_file)
        equal = True
        
        #  Nodes |           Edges |              γ(Edges) |        γ(Nodes) | Edge partition
        #--------------------------------------------------------------------------------------
        #v1 : v1 |  e1 : v1 --> v2 |  [e1] : [v1] --> [v2] |     [v1] : {v1} |         {'e1'}
        #v2 : v2 |  e2 : v1 --> v3 |  [e2] : [v1] --> [v3] |     [v2] : {v2} |         {'e2'}
        #v3 : v3 |  e3 : v1 --> v4 |  [e3] : [v1] --> [v4] | [v3] : {v5, v3} |         {'e3'}
        #v4 : v4 |  e4 : v3 --> v4 |  [e4] : [v3] --> [v4] | [v4] : {v4, v6} |         {'e5'}
        #v5 : v5 |  e5 : v4 --> v5 |  [e5] : [v4] --> [v3] |     [v7] : {v7} |         {'e6'}
        #v6 : v6 |  e6 : v4 --> v8 |  [e6] : [v4] --> [v8] |     [v8] : {v8} |         {'e7'}
        #v7 : v7 |  e7 : v5 --> v2 |  [e7] : [v3] --> [v2] |                 |   {'e4', 'e8'}
        #v8 : v8 |  e8 : v5 --> v6 |  [e9] : [v4] --> [v2] |                 |         {'e9'}
        #        |  e9 : v6 --> v2 | [e10] : [v4] --> [v8] |                 |        {'e10'}
        #        | e10 : v6 --> v8 | [e11] : [v7] --> [v3] |                 |        {'e11'}
        #        | e11 : v7 --> v3 | [e12] : [v7] --> [v3] |                 |        {'e12'}
        #        | e12 : v7 --> v5 | [e13] : [v7] --> [v8] |                 |        {'e13'}
        #        | e13 : v7 --> v8 |                       |                 |               
        #V -> I_V | ~V -> I_{~V} | A -> I_A | ~A -> I_{~A} | I_V -> I_{~V} | I_A -> I_{~A}
        #-----------------------------------------------------------------------------------
        #   v1->1 |      [v1]->1 |    e1->1 |      [e1]->1 |          1->1 |          1->1
        #   v2->2 |      [v2]->2 |    e2->2 |      [e2]->2 |          2->2 |          2->2
        #   v3->3 |      [v3]->3 |    e3->3 |      [e3]->3 |          3->3 |          3->3
        #   v4->4 |      [v4]->4 |    e4->4 |      [e4]->4 |          4->4 |          4->4
        #   v5->5 |      [v7]->5 |    e5->5 |      [e5]->5 |          5->3 |          5->5
        #   v6->6 |      [v8]->6 |    e6->6 |      [e6]->6 |          6->4 |          6->6
        #   v7->7 |              |    e7->7 |      [e7]->7 |          7->5 |          7->7
        #   v8->8 |              |    e8->8 |      [e9]->8 |          8->6 |          8->4
        #         |              |    e9->9 |     [e10]->9 |               |          9->8
        #         |              |  e10->10 |    [e11]->10 |               |         10->9
        #         |              |  e11->11 |    [e12]->11 |               |        11->10
        #         |              |  e12->12 |    [e13]->12 |               |        12->11
        #         |              |  e13->13 |              |               |        13->12
        true_nodes = [
                    Node(label=1), # [v1]
                    Node(label=2), # [v2]
                    Node(label=3), # [v3] = {v3, v5}
                    Node(label=4), # [v4] = {v4, v6}
                    Node(label=5), # [v7]
                    Node(label=6), # [v8]
        ]
        
        true_edges = [
                    Edge(src=true_nodes[0], dst=true_nodes[1], label=1, cost=12, toll=False),   # [e1] : [v1] --> [v2]
                    Edge(true_nodes[0], true_nodes[2], 2, 1, False),                            # [e2] : [v1] --> [v3]
                    Edge(true_nodes[0], true_nodes[3], 3, 5, False),                            # [e3] : [v1] --> [v4]
                    Edge(true_nodes[2], true_nodes[3], 4, 1, True),                             # [e4] : [v3] --> [v4]
                    Edge(true_nodes[3], true_nodes[2], 5, 3, False),                            # [e5] : [v4] --> [v3]
                    Edge(true_nodes[3], true_nodes[5], 6, 6, False),                            # [e6] : [v4] --> [v8]
                    Edge(true_nodes[2], true_nodes[1], 7, 6, False),                            # [e7] : [v3] --> [v2]
                    Edge(true_nodes[3], true_nodes[1], 8, 1, False),                            # [e9] : [v4] --> [v2]
                    Edge(true_nodes[3], true_nodes[5], 9, 1, False),                            # [e10] : [v4] --> [v8]
                    Edge(true_nodes[4], true_nodes[2], 10, 1, False),                           # [e11] : [v7] --> [v3]
                    Edge(true_nodes[4], true_nodes[2], 11, 5, False),                           # [e12] : [v7] --> [v3]
                    Edge(true_nodes[4], true_nodes[5], 12, 11, False),                           # [e13] : [v7] --> [v8]
        ]
        
        
        
        if len(nodes) != len(true_nodes):
            equal = False
        if len(edges) != len(true_edges):
            equal = False
        for edge1, edge2 in zip(edges, true_edges):
            if edge1!= edge2:
                equal = False
        for node1, node2 in zip(nodes, true_nodes):
            if node1!=node2:
                equal = False
                    
        if not equal:
            logger.warning(f'UNIT_TEST_export.UNIT_TEST_exemple1 failed')
        else:
            logger.info(f'UNIT_TEST_export.UNIT_TEST_exemple1 succeeded')
    
        if os.path.isfile(output_file):
            os.remove(output_file)
                    
    
    def UNIT_TEST_exemple2():
        # import example
        nodes, edges, edge_partition, problems = exemple2()
        
        g_gamma = GammaNPP(nodes, edges, edge_partition, problems)
        
        # Export transformed problem
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple2_export'
        output_file = os.path.join(directory, f"{filename}.json")
        g_gamma.export(directory, filename)
        
        # Verify that the integrity of the problem before and after export 
        nodes, edges, problems = from_json(output_file)
        equal = True
        
        #  Nodes |          Edges |             γ(Edges) |        γ(Nodes) | Edge partition
        #------------------------------------------------------------------------------------
        #v1 : v1 | e1 : v1 --> v2 | [e1] : [v1] --> [v2] | [v1] : {v3, v1} |   {'e4', 'e1'}
        #v2 : v2 | e2 : v2 --> v4 | [e2] : [v2] --> [v2] | [v2] : {v4, v2} |         {'e2'}
        #v3 : v3 | e3 : v2 --> v3 | [e3] : [v2] --> [v1] |                 |         {'e3'}
        #v4 : v4 | e4 : v3 --> v4 |                      |                 |               
        #V -> I_V | ~V -> I_{~V} | A -> I_A | ~A -> I_{~A} | I_V -> I_{~V} | I_A -> I_{~A}
        #-----------------------------------------------------------------------------------
        #   v1->1 |      [v1]->1 |    e1->1 |      [e1]->1 |          1->1 |          1->1
        #   v2->2 |      [v2]->2 |    e2->2 |      [e2]->2 |          2->2 |          2->2
        #   v3->3 |              |    e3->3 |      [e3]->3 |          3->1 |          3->3
        #   v4->4 |              |    e4->4 |              |          4->2 |          4->1
        
    
        true_nodes = [
                    Node(label=1), # [v1] : {v1, v3}
                    Node(label=2), # [v2] : {v2, v4}
        ]
        
        true_edges = [
                    Edge(src=true_nodes[0], dst=true_nodes[1], label=1, cost=1, toll=True),   # [e1] : [v1] --> [v2]
                    Edge(true_nodes[1], true_nodes[1], 2, 1, False),                            # [e2] : [v2] --> [v2]
                    Edge(true_nodes[1], true_nodes[0], 3, 1, False),                            # [e3] : [v2] --> [v1]
        ]
        
        
        
        if len(nodes) != len(true_nodes):
            equal = False
            
        if len(edges) != len(true_edges):
            equal = False
                    
        for edge1, edge2 in zip(edges, true_edges):
            if edge1!= edge2:
                equal = False
            
        for node1, node2 in zip(nodes, true_nodes):
            if node1!=node2:
                equal = False
                
                    
        if not equal:
            logger.warning(f'UNIT_TEST_export.UNIT_TEST_exemple2 failed')
        else:
            logger.info(f'UNIT_TEST_export.UNIT_TEST_exemple2 succeeded')
    
        if os.path.isfile(output_file):
            os.remove(output_file)
            
            
    UNIT_TEST_exemple1()
    UNIT_TEST_exemple2()


def UNIT_TEST_export_transformation_2():

    def UNIT_TEST_exemple_i(exemple, directory, filename): 
        # import
        nodes, edges, edge_partition, _ = exemple()
        g_gamma = Gamma(nodes, edges, edge_partition)
        

        output_file = os.path.join(directory, f"{filename}.pkl")
        g_gamma.export_transformation(directory, filename)
        
        with open(output_file, 'rb') as f:
            d = pickle.load(f)
        
        test_edge_partition = [tuple(map(lambda x: edges[x-1], cls)) for cls in d['RA']]
        test_node_partition = [tuple(map(lambda x: nodes[x-1], cls)) for cls in d['RV']]
        
        test_gamma = Gamma(nodes, edges, test_edge_partition)
        equal = True
        
        for node in nodes:
            if test_gamma(node) != g_gamma(node):
                equal = False
            if test_gamma.phi_V(node) != g_gamma.phi_V(node):
                equal = False
            if test_gamma.conv3(test_gamma.phi_V(node)) != g_gamma.conv3(g_gamma.phi_V(node)):
                equal = False
                
        for edge in edges:
            if test_gamma(edge) != g_gamma(edge):
                equal = False
            if test_gamma.phi_A(edge) != g_gamma.phi_A(edge):
                equal = False
            if test_gamma.conv1(test_gamma.phi_A(edge)) != g_gamma.conv1(g_gamma.phi_A(edge)):
                equal = False
                
        # original edge_partition vs edge_partition in gamma
        test1 = (set_of_frozenset(edge_partition) == set_of_frozenset(g_gamma.P_A))
        # edge_partition in gamma vs imported edge_partition from export
        test2 = (set_of_frozenset(g_gamma.P_A) == set_of_frozenset(test_edge_partition))
        # imported edge_partition vs edge_partition in the reconstructed gamma test
        test3 = (set_of_frozenset(test_edge_partition) == set_of_frozenset(test_gamma.P_A))
        # node_partition in gamma vs imported node_partition from export
        test4 = (set_of_frozenset(g_gamma.P_V) == set_of_frozenset(test_node_partition))
        # imported node_partition vs node_partition in reconstructed gamma test
        test5 = (set_of_frozenset(test_node_partition) == set_of_frozenset(test_gamma.P_V))
        
        
        equal = equal and test1 and test2 and test3 and test4 and test5
        return equal
        
    def UNIT_TEST_exemple1():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple1_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exemple1
        
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple1 failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple1 failed')
            else:
                logger.info('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple1 succeeded')
                
        if os.path.isfile(output_file):
            os.remove(output_file)
            
    def UNIT_TEST_exemple2():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple2_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exemple2
        
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple2 failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple2 failed')
            else:
                logger.info('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple2 succeeded')

        if os.path.isfile(output_file):
            os.remove(output_file)
        
    def UNIT_TEST_exemple3():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple3_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exemple3
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple3 failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple3 failed')
            else:
                logger.info('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple3 succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
    def UNIT_TEST_exemple5():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple5_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exemple5
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple5 failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple5 failed')
            else:
                logger.info('UNIT_TEST_export_transformation_2.UNIT_TEST_exemple5 succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
            
    def UNIT_TEST_exempleX():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exempleX_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exempleX
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation_2.UNIT_TEST_exempleX failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation_2.UNIT_TEST_exempleX failed')
            else:
                logger.info('UNIT_TEST_export_transformation_2.UNIT_TEST_exempleX succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
            
    def UNIT_TEST_exempleXI():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exempleXI_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exempleXI
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation_2.UNIT_TEST_exempleXI failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation_2.UNIT_TEST_exempleXI failed')
            else:
                logger.info('UNIT_TEST_export_transformation_2.UNIT_TEST_exempleXI succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
            
    UNIT_TEST_exemple1()
    UNIT_TEST_exemple2()
    UNIT_TEST_exemple3()
    UNIT_TEST_exemple5()
    UNIT_TEST_exempleX()
    UNIT_TEST_exempleXI()
        
def UNIT_TEST_from_transformation_pickle():
    
    def UNIT_TEST_exemple_i(exemple, directory, filename): 
        # import
        nodes, edges, edge_partition, _ = exemple()
        g_gamma = Gamma(nodes, edges, edge_partition)
        output_file = os.path.join(directory, f"{filename}.pkl")
        g_gamma.export_transformation(directory, filename)
        
        test_gamma = Gamma.from_transformation_pickle(nodes, edges, output_file)
        equal = True
        
        for node in nodes:
            if test_gamma(node) != g_gamma(node):
                equal = False
            if test_gamma.phi_V(node) != g_gamma.phi_V(node):
                equal = False
            if test_gamma.conv3(test_gamma.phi_V(node)) != g_gamma.conv3(g_gamma.phi_V(node)):
                equal = False
                
        for edge in edges:
            if test_gamma(edge) != g_gamma(edge):
                equal = False
            if test_gamma.phi_A(edge) != g_gamma.phi_A(edge):
                equal = False
            if test_gamma.conv1(test_gamma.phi_A(edge)) != g_gamma.conv1(g_gamma.phi_A(edge)):
                equal = False
        
                
        # original edge_partition vs edge_partition in gamma
        test1 = (set_of_frozenset(edge_partition) == set_of_frozenset(g_gamma.P_A))
        # edge_partition in gamma vs reconstructed edge_partition 
        test2 = (set_of_frozenset(g_gamma.P_A) == set_of_frozenset(test_gamma.P_A))
        # node_partition in gamma vs reconstructed node_partition
        test3 = (set_of_frozenset(g_gamma.P_V) == set_of_frozenset(test_gamma.P_V))
        
        
        equal = equal and test1 and test2 and test3
        return equal
        
    def UNIT_TEST_exemple1():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple1_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exemple1
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation.UNIT_TEST_exemple1 failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation.UNIT_TEST_exemple1 failed')
            else:
                logger.info('UNIT_TEST_export_transformation.UNIT_TEST_exemple1 succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
    def UNIT_TEST_exemple2():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple2_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exemple2
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation.UNIT_TEST_exemple2 failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation.UNIT_TEST_exemple2 failed')
            else:
                logger.info('UNIT_TEST_export_transformation.UNIT_TEST_exemple2 succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
        
    def UNIT_TEST_exemple3():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple3_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exemple3
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation.UNIT_TEST_exemple3 failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation.UNIT_TEST_exemple3 failed')
            else:
                logger.info('UNIT_TEST_export_transformation.UNIT_TEST_exemple3 succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
    def UNIT_TEST_exemple5():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exemple5_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exemple5
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation.UNIT_TEST_exemple5 failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation.UNIT_TEST_exemple5 failed')
            else:
                logger.info('UNIT_TEST_export_transformation.UNIT_TEST_exemple5 succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
            
    def UNIT_TEST_exempleX():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exempleX_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exempleX
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation.UNIT_TEST_exempleX failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation.UNIT_TEST_exempleX failed')
            else:
                logger.info('UNIT_TEST_export_transformation.UNIT_TEST_exempleX succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
    def UNIT_TEST_exempleXI():
        directory = os.path.join('.', 'tmp', 'unit_test')
        filename = 'exempleXI_export_transformation'
        output_file = os.path.join(directory, f"{filename}.pkl")
        exemple = exempleXI
        try:
            test = UNIT_TEST_exemple_i(exemple, directory, filename)
        except Exception as e:
            logger.exception('UNIT_TEST_export_transformation.UNIT_TEST_exempleXI failed')
        else:
            if not test:
                logger.warning('UNIT_TEST_export_transformation.UNIT_TEST_exempleXI failed')
            else:
                logger.info('UNIT_TEST_export_transformation.UNIT_TEST_exempleXI succeeded')
        if os.path.isfile(output_file):
            os.remove(output_file)
            
    UNIT_TEST_exemple1()
    UNIT_TEST_exemple2()
    UNIT_TEST_exemple3()
    UNIT_TEST_exemple5()
    UNIT_TEST_exempleX()
    UNIT_TEST_exempleXI()
        
