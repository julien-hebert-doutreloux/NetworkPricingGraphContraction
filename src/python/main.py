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
