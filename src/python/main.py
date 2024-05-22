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
from prebuilt.a04_prepare_sh_task import main as prepare_sh_task
from prebuilt.a05_post_processing_result import main as post_processing_result

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
            prepare_sh_task()
            
        elif selected_option_3 == '3-5':
            post_processing_result()
            ##post_processing_result(['d30-03', 'd30-05', 'd30-06', 'd30-07', 'd30-08', 'd30-09', 'd35-01', 'd35-03', 'd35-04', 'd35-07'])
            ##post_processing_result(['d35-08', 'd35-09', 'd35-10', 'd40-05', 'd40-06', 'd40-09', 'd45-02', 'd45-06', 'd50-06', 'g30-01'])
            ##post_processing_result(['g30-02', 'g30-03', 'g30-04', 'g30-05', 'g30-06', 'g30-07', 'g30-08', 'g30-09', 'g35-01'])
            ##post_processing_result(['g35-02', 'g35-03', 'g35-04', 'g35-05', 'g35-06', 'g35-07', 'g35-08', 'g35-09', 'g35-10'])
            ##post_processing_result(['g40-02', 'g40-03', 'g40-04', 'g40-05', 'g40-06', 'g40-07', 'g40-09', 'g40-10', 'g45-01'])
            ##post_processing_result(['g45-06', 'g45-07', 'g45-08', 'g45-10', 'g50-01', 'g50-02', 'g50-03', 'g50-04', 'g50-08'])
            ##post_processing_result(['g50-10', 'h30-01', 'h30-03', 'h30-07', 'h30-09', 'h35-04', 'h35-10', 'v30-01', 'v30-05'])
            ##post_processing_result(['v30-06', 'v30-07', 'v30-08', 'v35-01', 'v35-02', 'v40-01', 'v40-02', 'v45-01', 'v50-01'])
            ...
            
            
    elif selected_option == 'option5':
        selected_option_5 = args.pop('selected_option_5')
        
        if selected_option_5 == '5-1':
            problem_maker(**args)
                        
                        
    if selected_option == 'option8':
        test()
        
        
        
        #shortest_path_rewind(verbose)

# xxxxxx-NPP-yyyyyy         := normal npp problem
# xxxxxx-NPP-yyyyyy-R       := revised npp problem
# xxxxxx-NPP-yyyyyy-T       := transformation file
# xxxxxx-NPP-yyyyyy-(R-)RR  := raw result
# xxxxxx-NPP-yyyyyy-(R-)PR  := process result that compare the original problem with the transformed one











# il faut adapter le code pour que la borne inferieur de n'importe quelle arcs soient 1
# en plus des autres changements ...
#./src/components/graphmodel.jl:        set_lower_bound(x[a], 0)
#./src/components/graphmodel.jl:        set_lower_bound(x[a], 1)
#./src/models/dual-representation.jl:    dual.λ = λ = @variable(model, [1:nv], lower_bound = 0, base_name="λ[$k]")
#./src/models/dual-representation.jl:    dual.L = L = @variable(model, lower_bound = 0, base_name="L[$k]")
#./src/models/linearizations/commodity-linearization.jl:    tx = @variable(model, [a=a1], lower_bound = 0, base_name="tx[$k]") <--- changement ici
#./src/models/primal-representation.jl:    primal.x = x = @variable(model, [1:na], lower_bound = 0, upper_bound = 1, base_name="x[$k]")
#./src/models/primal-representation.jl:    primal.z = z = @variable(model, [1:np], lower_bound = 0, upper_bound = 1, base_name="z[$k]")
#./src/models/primal-representation.jl:    primal.x = x = @variable(model, [a1], lower_bound = 0, upper_bound = 1, base_name="x[$k]")



# il faut changer 
#.src/models/linearizations/commodity-linearization.jl line 33
# Julien : if else statement is not in the original code 
#    if isempty(tx)
#        sumtx = 0.0
#    else
#        sumtx = sum(tx)
#    end


# One batch 
# 2 gb RAM + 1 CPU

# 1) Generation (home)
# 1000 transformations ---> 2 MB
# 1000 npp graphs    ---> 4.5 MB
# 1000 results         ---> 4.5 MB

# 2) Computing (RAM)
# 1000 transformations ---> 2 MB
# 1000 results         ---> 4.5 MB

# Total in home : 11 MB

# Max number of batch : ~2000
