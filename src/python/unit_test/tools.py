from preamble.preamble import *
###########
## TOOLS.py
###########
PARAMETERS = config.unit_test_tools(__name__)
logger = config.log(**PARAMETERS['logger'])
## Useful functions for unit testing
def unit_test_decorator(func):
    def wrapper(*args, **kwargs):
        result = func(*args, **kwargs)
        logger.info(f"Unit test {func.__name__} completed.")
        return result
    return wrapper
    

def timing_decorator(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        execution_time = end_time - start_time
        
        logger.info(f"{func.__name__} took {execution_time:.8f} seconds to execute.")
        return result, execution_time
    return wrapper


