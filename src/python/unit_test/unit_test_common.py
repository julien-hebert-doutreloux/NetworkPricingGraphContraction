from preamble.preamble import *
from unit_test.tools import unit_test_decorator, timing_decorator
from gamma.common import from_json, to_json
######################
## UNIT_TEST_COMMON.PY
######################

## Unit test for the common.py

## Function Tested
## common.from_json
## common.to_json

@unit_test_decorator
def UNIT_TEST_from_json_to_json():
    """
    Compares two JSON files by loading and comparing their content.

    This function takes two file paths for JSON files as input, loads the content
    of each file, and compares the loaded data. It uses the assert statement to
    check if the data from the first file is equal to the data from the second file.
    If the data is not equal, an AssertionError is raised with an appropriate message.

    Raises:
    AssertionError: If the content of the two JSON files is not equal.
    """
    directory = 'other'
    filename = 'adaptivetest'
    input_file1 = os.path.join(directory, f"{filename}.json")
    nodes, edges, problems = from_json(input_file1)
    
    with open(input_file1, 'r') as json_file:
        data1 = json.load(json_file)
        
    #summary(nodes, edges)
    
    directory = 'other'
    filename = 'adaptivetest_rebuild'
    input_file2 = os.path.join(directory, f"{filename}.json")
    json_dict = to_json(nodes, edges, problems, directory, filename, indent=4)
    
    with open(input_file2, 'r') as json_file:
        data2 = json.load(json_file)

    # Compare the loaded data
    test = (data1 == data2)
    assert test, f"from_json:{input_file1} is different from to_json:{input_file2}"
    
    if os.path.isfile(input_file2):
        os.remove(input_file2)
    #    print(f"{input_file2} was deleted.")
    #else:
    #    print(f"{input_file2} does not exist.")

