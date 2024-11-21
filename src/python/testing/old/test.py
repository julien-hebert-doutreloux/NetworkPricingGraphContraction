from preamble.preamble import *
from unit_test.tools import timing_decorator, unit_test_decorator
from testing.result_processing import post_process_result
from gamma.common import npp_from_json
from testing.problem_maker import problem_maker

PARAMETERS = config.test_test(__name__)
logger = config.log(**PARAMETERS['logger'])
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
    problem_maker()
    ...
    
    
                
    
    
    
    
    
    
    
    
    
    
    
    
    
    

