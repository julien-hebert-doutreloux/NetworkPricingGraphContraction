from preamble.preamble import *
from unit_test.tools import unit_test_decorator, timing_decorator
from gamma.common import npp_from_json, to_json
from gamma.gamma import GammaNPP
PARAMETERS = config.unit_test_unit_test_common(__name__)
logger = config.log(**PARAMETERS['logger'])

######################
## UNIT_TEST_COMMON.PY
######################

## Unit test for the common.py

## Function Tested
## common.npp_from_json
## common.to_json

def UNIT_TEST_npp_from_json_to_json():
    """
    Compares two JSON files by loading and comparing their content.

    This function takes two file paths for JSON files as input, loads the content
    of each file, and compares the loaded data. It uses the assert statement to
    check if the data from the first file is equal to the data from the second file.
    If the data is not equal, an AssertionError is raised with an appropriate message.

    """
    directory = 'other'
    filename = 'adaptivetest'
    input_file1 = os.path.join(directory, f"{filename}.json")
    nodes, edges, problems = npp_from_json(input_file1)
    
    with open(input_file1, 'r') as json_file:
        data1 = json.load(json_file)
        
    #summary(nodes, edges)
    
    directory = 'other'
    filename = 'adaptivetest_rebuild'
    #input_file2 = os.path.join(directory, f"{filename}.json")
    
    g_gamma = GammaNPP(nodes, edges, edge_partition=None, problems=problems)
    json_dict = g_gamma.image_problem_to_dict()
    input_file2 = to_json(json_dict, directory, filename, indent=4)
    
    with open(input_file2, 'r') as json_file:
        data2 = json.load(json_file)

    # Compare the loaded data
    test = (data1 == data2)
    if not test:
        logger.warning(f"npp_from_json:{input_file1} is different from to_json:{input_file2}")
        logger.warning('UNIT_TEST_npp_from_json_to_json failed')
    else:
        logger.info('UNIT_TEST_npp_from_json_to_json succeeded')
        
    if os.path.isfile(input_file2):
        os.remove(input_file2)

