from preamble.preamble import *

PARAMETERS = config.main_main(__name__)
logger = config.log(**PARAMETERS['logger'])

from menu.menu import *
from unit_test.unit_test import main as unit_test

from prebuilt.a00_prepare_max_clique_script_sh import main as prepare_sh_maximum_clique
from prebuilt.a01_prepare_sh_original import main as prepare_sh_original
from prebuilt.a02_time_config import main as time_config
from prebuilt.a03_problem_generation import main as problem_generation   
from prebuilt.a04_prepare_sh_julia import main as prepare_sh_julia
from prebuilt.a05_post_processing_result import main as prepare_sh_python

from testing.experience_approx_max_clique_sh import main as experience_approx_max_clique_sh
from testing.problem_maker import problem_maker
from testing.result_processing import post_process, post_process_original

# Option
# 1) unit test (working)
# 2) networkx.approximation.max_clique vs my.max_clique performance test
# 3) prebuilt
#   3.0) prepare sh file for the maximum clique experience
#   3.1) prepare sh file to generate transformed NPP problems
#   3.2) compile time data from the original NPP problems that have been solved
#   3.3) prepare sh file to solve the original NPP problems
#   3.4) prepare sh file to solve the transformed NPP problems
#   3.5) prepare sh file to post-process data from transformed NPP problems outputs
# 5) indivual result_process
#   5.1) problem generation
#   5.3) processing original NPP output data
#   5.3) processing transformed NPP output data

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

    option_1(subparsers) # Option 1 - unit_test
    option_2(subparsers) # Option 2 - max_clique performance test
    option_3(subparsers) # Option 3 - prebuilt
    option_5(subparsers) # Option 5 - individual process
    
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
        experience_approx_max_clique_sh(**args)
        
    elif selected_option == 'option3':
        selected_option_3 = args.pop('selected_option_3')
            
        if selected_option_3 == '3-0':
            # Maximum clique experience (produce sh script ready to run)
            prepare_sh_maximum_clique()
        
        elif selected_option_3 == '3-1':
            # generate problem
            problem_generation()
            
        if selected_option_3 == '3-2':
            # Batch original problem (produce sh script ready to run)
            prepare_sh_original()
            
        elif selected_option_3 == '3-3':
            # Compile time data from the original solution
            time_config()
            
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
