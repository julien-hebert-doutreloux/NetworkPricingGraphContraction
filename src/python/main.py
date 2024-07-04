from preamble.preamble import *

PARAMETERS = config.main_main(__name__)
logger = config.log(**PARAMETERS['logger'])

from menu.menu import *
from unit_test.unit_test import main as unit_test
from testing.test_approx_max_clique import main as test_approx_max_clique
from testing.problem_maker import problem_maker

from prebuilt.a01_prepare_sh_original import main as prepare_sh_original
from prebuilt.a02_time_config import main as time_config

from prebuilt.a03_problem_generation import main as problem_generation   
from prebuilt.a04_prepare_sh_julia import main as prepare_sh_julia
from prebuilt.a05_post_processing_result import main as prepare_sh_python

from testing.result_processing import post_process, post_process_original
from testing.test import main as test
                                

# Option
# 1) unit test
# 2) networkx.approximation.max_clique vs my.max_clique performance test
# 3) prebuilt
#   3.1) problem generation
#   3.2) experience launch
#   3.3) processing result
# 5) indivual result_process
#   5.1) problem generation
#   5.3) processing result

if '__main__' == __name__:


    parser = argparse.ArgumentParser(
                                    description="""Main program""",
                                    formatter_class=argparse.RawTextHelpFormatter
                                    )

    subparsers = parser.add_subparsers(
                                        dest='selected_option',
                                        help='Option',
                                        required=True
                                    )

    # Option 1 - unit_test
    option_1(subparsers)
    
    # Option 2 - max_clique performance test
    option_2(subparsers)
    
    # Option 3 - prebuilt
    option_3(subparsers)
    
    # Option 5 - individual process
    option_5(subparsers)
    
    # Option 8- test
    option_8(subparsers)
    
    args = parser.parse_args(sys.argv[1:]).__dict__
    ##################################################################
    header = ['Key', 'Value']
    rows = [(k, v) for k, v in args.items()]
    logger.debug('\n'+tabulate(rows, headers=header))
    #################################################################
    selected_option = args.pop('selected_option')
    
            
    if selected_option == 'option1':
        unit_test()
        
    elif selected_option == 'option2':
        lock = threading.Lock()
        test_approx_max_clique(**args)
        
    elif selected_option == 'option3':
        selected_option_3 = args.pop('selected_option_3')
        
        if selected_option_3 == '3-1':
            # Batch original problem (produce sh script ready to run)
            prepare_sh_original()
            
        elif selected_option_3 == '3-2':
            # Compile time data from the original solution
            time_config()
            
        elif selected_option_3 == '3-3':
            # generate problem
            problem_generation()
            
        elif selected_option_3 == '3-4':
            # prepare julia command in sh file
            prepare_sh_julia()
            
        elif selected_option_3 == '3-5':
            # prepare python post processing in sh file
            prepare_sh_python()
            
                        
    elif selected_option == 'option5':
        selected_option_5 = args.pop('selected_option_5')
        
        if selected_option_5 == '5-1':
            # Generate problem
            problem_maker(**args)
            
        elif selected_option_5 == '5-2':
            # Post process original result
            post_process_original(**args)
        
        elif selected_option_5 == '5-3':
            # Post process result
            post_process(**args)
                        
    if selected_option == 'option8':
        test()
