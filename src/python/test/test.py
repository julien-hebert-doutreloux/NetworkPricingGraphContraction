from preamble.preamble import *
from unit_test.tools import timing_decorator, unit_test_decorator
from test.problem_maker import uniform_batch_merging

def bell_number(n):
    if n == 0:
        return 1
    
    bell = [[0] * (n + 1) for _ in range(n + 1)]
    bell[0][0] = 1
    
    for i in range(1, n + 1):
        bell[i][0] = bell[i - 1][i - 1]
        
        for j in range(1, i + 1):
            bell[i][j] = bell[i - 1][j - 1] + bell[i][j - 1]
    
    return bell[n][0]
    

@timing_decorator
def main():

    #super_batch_size = 5
    #erease = True
    #merging_batch(input_folder, super_batch_size, erease)
    input_folder_graphs = './tmp/testing_gen/graphs/progressive/j40-07/'
    input_folder_transformations = './tmp/testing_gen/transformations/progressive/j40-07/'
    uniform_batch_merging(input_folder_graphs, input_folder_transformations)
    
    

