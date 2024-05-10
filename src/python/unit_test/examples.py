from gamma.gamma import Gamma, Edge, Node

def exemple1():
    node1 = Node('v1')
    node2 = Node('v2')
    node3 = Node('v3')
    node4 = Node('v4')
    node5 = Node('v5')
    node6 = Node('v6')
    node7 = Node('v7')
    node8 = Node('v8')
 
    edge1 = Edge(node1, node2, 'e1', 12)
    edge2 = Edge(node1, node3, 'e2', 0)
    edge3 = Edge(node1, node4, 'e3', 5)
    edge4 = Edge(node3, node4, 'e4', 54, toll=True)
    edge5 = Edge(node4, node5, 'e5', 3)
    edge6 = Edge(node4, node8, 'e6', 6)
    edge7 = Edge(node5, node2, 'e7', 6)
    edge8 = Edge(node5, node6, 'e8', 54, toll=True)
    edge9 = Edge(node6, node2, 'e9', 0)
    edge10 = Edge(node6, node8, 'e10', 0)
    edge11 = Edge(node7, node3, 'e11', 0)
    edge12 = Edge(node7, node5, 'e12', 5)
    edge13 = Edge(node7, node8, 'e13', 11)
    
    edge_partition = [
        (edge1,),
        (edge2,),
        (edge3,),
        (edge5,),
        (edge6,),
        (edge7,),
        (edge4, edge8,),
        (edge9,),
        (edge10,),
        (edge11,),
        (edge12,),
        (edge13,),
    ]
    nodes = [node1, node2, node3, node4, node5, node6, node7, node8]
    edges = [edge1,	edge2,	edge3,	edge4,	edge5,	edge6,	edge7,	edge8,	edge9,	edge10,	edge11,	edge12, edge13]
    
    
    problems = [
                {
                    "orig": node1, #nodes[0],
                    "dest": node3, #nodes[2],
                    "demand":2,
                },
                {
                    "orig": node1, #nodes[0],
                    "dest": node5, #nodes[4],
                    "demand":3,
                },
                {
                    "orig": node3, #nodes[2],
                    "dest": node6, #nodes[5],
                    "demand":1,
                }
            ]
    return nodes, edges, edge_partition, problems

def exemple2():        
    # Exemple  2
    node1 = Node('v1')
    node2 = Node('v2')
    node3 = Node('v3')
    node4 = Node('v4')
    
    edge1 = Edge(node1, node2, 'e1', 54, True)
    edge2 = Edge(node2, node4, 'e2', 0)
    edge3 = Edge(node2, node3, 'e3', 1)
    edge4 = Edge(node3, node4, 'e4', 54, True)

    edge_partition = [
        (edge1, edge4),
        (edge2,),
        (edge3,)
    ]
    nodes = [node1, node2, node3, node4]
    edges = [edge1,	edge2,	edge3,	edge4]
    
    problems = [
                {
                    "orig": node1,
                    "dest": node3,
                    "demand":2,
                },
                {
                    "orig": node1,
                    "dest": node2,
                    "demand":3,
                },
                {
                    "orig": node1,
                    "dest": node4,
                    "demand":1,
                }
            ]
    return nodes, edges, edge_partition, problems

def exemple3():
    # Exemple 3
    
    node1 = Node('v1')
    node2 = Node('v2')
    node3 = Node('v3')
    node4 = Node('v4')
    node5 = Node('v5')
    node_u = Node('u')
    node_v = Node('v')
    node_w = Node('w')
    
    edge1 = Edge(node1, node_u, 'e1', 54, True)
    edge2 = Edge(node1, node2, 'e2', 1)
    edge3 = Edge(node_v, node3, 'e3', 54, True)
    edge4 = Edge(node_w, node4, 'e4', 54, True)
    edge5 = Edge(node2, node5, 'e5', 1)
    edge6 = Edge(node5, node_w, 'e6', 1)
    edge7 = Edge(node2, node_v, 'e7', 54, True)


    
    # definition de l'ensemble quotient des arcs (A/~)
    edge_partition = [
        (edge1, edge7),
        (edge3, edge4),
        (edge2,),
        (edge5,),
        (edge6,)
    ]

    # Nom et symbole des sommets sous forme d'ensemble
    nodes = [node1, node2, node3, node4, node5, node_u, node_v, node_w]
    edges = [edge1,	edge2,	edge3,	edge4,	edge5,	edge6,	edge7]
    
    problems = []
    return nodes, edges, edge_partition, problems

def exemple5():
    # Exemple 5
    node1 = Node('v1')
    node2 = Node('v2')
    node3 = Node('v3')
    node4 = Node('v4')
    node5 = Node('v5')
    node6 = Node('v6')
    node7 = Node('v7')
    node8 = Node('v8')
    
    node_u = Node('u')
    node_v = Node('v')
    node_w = Node('w')
    
    node_gamma = Node('γ')
    node_epsilon = Node('ξ')
    
    edge1 = Edge(node1, node_u, 'e1', 54, True)
    edge2 = Edge(node1, node2, 'e2')
    edge3 = Edge(node_v, node3, 'e3', 54, True)
    edge4 = Edge(node_w, node4, 'e4', 54, True)
    edge5 = Edge(node2, node5, 'e5')
    edge6 = Edge(node5, node6, 'e6')
    edge7 = Edge(node_epsilon, node7, 'e7', 54, True)
    edge8 = Edge(node_gamma, node8, 'e8', 54, True)
    edge9 = Edge(node5, node_w, 'e9', 54, True)
    edge10 = Edge(node6, node_epsilon, 'e10', 54, True)
    edge11 = Edge(node2, node_v, 'e11', 54, True)
    edge12 = Edge(node6, node_gamma, 'e12')

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
    nodes = [node1, node2, node3, node4, node5, node6, node7, node8, node_u, node_v, node_w, node_gamma, node_epsilon]
    edges = [edge1,	edge2,	edge3,	edge4,	edge5,	edge6,	edge7,	edge8,	edge9,	edge10,	edge11,	edge12]
    
    problems = []
    return nodes, edges, edge_partition, problems
    

def exempleX():

    node1	=	Node("1")
    node2	=	Node("2")
    node3	=	Node("3")
    node4	=	Node("4")
    node5	=	Node("5")
    node6	=	Node("6")
    node7	=	Node("7")
    node8	=	Node("8")
    node9	=	Node("9")
    node10	=	Node("10")
    node11	=	Node("11")
    node12	=	Node("12")
    node14	=	Node("14")
    node15	=	Node("15")
    
    edge1	=	Edge(node1,node12,"e1")
    edge2	=	Edge(node1,node8,"e2")
    edge3	=	Edge(node6,node12,"e3")
    edge4	=	Edge(node1,node6,"e4")
    edge5	=	Edge(node8,node12,"e5")
    edge6	=	Edge(node2,node6,"e6")
    edge7	=	Edge(node12,node9,"e7")
    edge8	=	Edge(node6,node14,"e8")
    edge9	=	Edge(node8,node11,"e9")
    edge10	=	Edge(node2,node14,"e10")
    edge11	=	Edge(node14,node7,"e11")
    edge12	=	Edge(node2,node10,"e12", 54, True)
    edge13	=	Edge(node9,node10,"e13")
    edge14	=	Edge(node7,node5,"e14", 54, True)
    edge15	=	Edge(node10,node5,"e15")
    edge16	=	Edge(node9,node11,"e16", 54, True)
    edge17	=	Edge(node10,node3,"e17", 54, True)
    edge18	=	Edge(node3,node5,"e18")
    edge19	=	Edge(node3,node4,"e19")
    edge20	=	Edge(node15,node4,"e20")
    edge21	=	Edge(node5,node15,"e21",1)
    edge22	=	Edge(node3,node15,"e22",2)
    edge23	=	Edge(node11,node3,"e23", 54, True)


    edge_partition = [
        (edge1,),
        (edge2,),
        (edge3,),
        (edge4,),
        (edge5,),
        (edge6,),
        (edge7,),
        (edge8,),
        (edge9,),
        (edge10,),
        (edge11,),
        (edge13,),
        (edge15,),
        (edge18,),
        (edge19,),
        (edge20,),
        (edge21,),
        (edge22,),
        (edge12, edge23),
        (edge14, edge16, edge17),
        ]
    
    nodes = [node1, node2, node3, node4, node5, node6, node7, node8, node9, node10, node11, node12, node14, node15]
    edges = [edge1,	edge2,	edge3,	edge4,	edge5,	edge6,	edge7,	edge8,	edge9,	edge10,	edge11,	edge12,	edge13,	edge14,	edge15,	edge16,	edge17,	edge18,	edge19,	edge20,	edge21,	edge22,	edge23]
    problems = []
    return nodes, edges, edge_partition, problems
    
    
def exempleXI():
    node1	=	Node("1")
    node2	=	Node("2")
    node3	=	Node("3")
    node4	=	Node("4")
    node5	=	Node("5")
    node6	=	Node("6")
    node7	=	Node("7")
    node8	=	Node("8")
    node9	=	Node("9")
    node10	=	Node("10")
    node11	=	Node("11")
    node12	=	Node("12")
    node14	=	Node("14")
    node15	=	Node("15")
    
    edge1	=	Edge(node1,node8,'e1')
    edge2	=	Edge(node1,node12,'e2')
    edge3	=	Edge(node1,node6,'e3')
    edge4	=	Edge(node8,node11,'e4')
    edge5	=	Edge(node8,node12,'e5')
    edge6	=	Edge(node12,node9,'e6')
    edge7	=	Edge(node6,node12,'e7')
    edge8	=	Edge(node6,node14,'e8')
    edge9	=	Edge(node2,node6,'e9')
    edge10	=	Edge(node11,node3,'e10')
    edge11	=	Edge(node9,node11,'e11', 54, True)
    edge12	=	Edge(node9,node10,'e12')
    edge13	=	Edge(node2,node14,'e13')
    edge14	=	Edge(node14,node7,'e14')
    edge15	=	Edge(node2,node10,'e15', 54, True)
    edge16	=	Edge(node3,node4,'e16')
    edge17	=	Edge(node3,node15,'e17')
    edge18	=	Edge(node3,node5,'e18')
    edge19	=	Edge(node10,node3,'e19', 54, True)
    edge20	=	Edge(node10,node5,'e20')
    edge21	=	Edge(node7,node5,'e21', 54, True)
    edge22	=	Edge(node15,node4,'e22')
    edge23	=	Edge(node5,node15,'e23')
    
    edge_partition = [
        (edge1,),
        (edge2,),
        (edge3,),
        (edge5,),
        (edge7,),
        (edge8,),
        (edge9,),
        (edge10,),
        (edge11,),
        (edge12,),
        (edge13,),
        (edge14,),
        (edge15,),
        (edge16,),
        (edge17,),
        (edge18,),
        (edge21,),
        (edge22,),
        (edge23,),
        (edge19, edge20,),
        (edge4, edge6,),
        ]
    nodes = [node1, node2, node3, node4, node5, node6, node7, node8, node9, node10, node11, node12, node14, node15]
    edges = [edge1,	edge2,	edge3,	edge4,	edge5,	edge6,	edge7,	edge8,	edge9,	edge10,	edge11,	edge12,	edge13,	edge14,	edge15,	edge16,	edge17,	edge18,	edge19,	edge20,	edge21,	edge22,	edge23]
    problems = []
    return nodes, edges, edge_partition, problems
