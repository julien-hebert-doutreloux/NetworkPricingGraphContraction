from preamble.preamble import *
###########
## TOOLS.py
###########

## Useful functions for unit testing
def unit_test_decorator(func):
    def wrapper(*args, **kwargs):
        result = func(*args, **kwargs)
        print(f"Unit test {func.__name__} completed.")
        return result
    return wrapper
    
def timing_decorator(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        execution_time = end_time - start_time
        print(f"{func.__name__} took {execution_time:.8f} seconds to execute.")
        #print(f"{func.__name__} return {type(result)}.")
        return result
    return wrapper
