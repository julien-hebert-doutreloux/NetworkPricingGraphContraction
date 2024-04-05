from preamble.preamble import *

PARAMETERS = config.main_main(__name__)
logger = config.log(**PARAMETERS['logger'])

from menu.menu import *
from unit_test.unit_test import main as unit_test
from test.test_approx_max_clique import main as test_approx_max_clique

from test.result_processing import \
                                process_result_before_vs_after,\
                                process_result_before_vs_after_batch,\
                                stack_result_into_dataframe,\
                                stack_result_into_dataframe_batch
                                
from test.problem_maker import main as problem_maker
from test.test import main as test
from test.shortest_path_rewind import shortest_path_rewind 
from test.compute_grid import \
                                compute_grid_problem_generation,\
                                compute_grid_individual_julia,\
                                compute_grid_process_result_before_vs_after,\
                                compute_grid_stack_result_into_dataframe
                                
                                

# Option
# X 1) unit test
# X 2) networkx.approximation.max_clique vs my.max_clique performance test
# 3) compute grid
# X 3.1) problems generation
# X 3.2) julia commands individual (1-batch)
# X 3.3) julia commands n-batch
# X 3.4) result process
# X 3.5) result process n-batch
# X 3.6) result stacking
# X 3.7) result stacking n-batch
# X 4) process compute grid
# 5) indivual result_process
# X 5.1) problem generation
# X 5.2) process raw data
# X 5.3) process raw data batch
# X 5.4) stack process data
# X 5.5) stack process data
# 6) plot
#   6.1) plot graph
#   6.2) ...


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
    
    # Option 3 - compute_grid
    option_3(subparsers)
    
    # Option 4 - Process compute grid
    option_4(subparsers)
    
    # Option 5 - individual process
    option_5(subparsers)
    
    # Option 8- test
    option_8(subparsers)
    
    args = parser.parse_args(sys.argv[1:])
    selected_option = args.selected_option
    
    
    ##################################################################
    #if args.verbose:
    #    verbose = True if args.verbose.lower() == 'true' else False
    #else:
    #    verbose = False
        
    #if verbose:
    header = ['Key', 'Value']
    rows = [(k, v) for k, v in args.__dict__.items()]
    logger.debug('\n'+tabulate(rows, headers=header))
    #################################################################
            
    if selected_option == 'option1':
        unit_test()
        
    elif selected_option == 'option2':
        input_file = args.input_file
        formula_option = args.formula_option
        iteration = args.iteration
        export_path = args.export_path
        
        lock = threading.Lock()
        test_approx_max_clique(input_file, formula_option, iteration, export_path)
        
        
    elif selected_option == 'option3':
        selected_option_3 = args.selected_option_3
        
        if selected_option_3 == '3-1':
            num_partitions = args.num_partitions
            max_sub_length = args.max_sub_length
            input_folder = args.input_folder
            export_folder_grid = args.export_folder_grid
            export_folder_problems = args.export_folder_problems
            export_folder_transformations = args.export_folder_transformations
            output_filename = args.output_filename
            
            compute_grid_problem_generation(
                                            num_partitions,
                                            max_sub_length,
                                            input_folder,
                                            export_folder_grid,
                                            export_folder_problems,
                                            export_folder_transformations,
                                            output_filename,
                                            verbose
                                        )
                                        
        elif selected_option_3 in ['3-2', '3-3']:
            input_folder = args.input_folder
            export_folder_grid = args.export_folder_grid
            export_folder_results = args.export_folder_results
            output_filename = args.output_filename
            batch_size = args.batch_size if args.batch_size else 1 
            compute_grid_individual_julia(
                                            input_folder,
                                            export_folder_grid,
                                            export_folder_results,
                                            output_filename,
                                            batch_size,
                                            verbose
                                        )
                                
        elif selected_option_3 in ['3-4', '3-5']:
        
            input_folder_graphs = args.input_folder_graphs
            input_folder_transformations = args.input_folder_transformations
            input_folder_results = args.input_folder_results
            export_folder_grid = args.export_folder_grid
            export_folder_results = args.export_folder_results
            output_filename = args.output_filename
            batch_size = args.batch_size if args.batch_size else 1 
            
            compute_grid_process_result_before_vs_after(
                                                            input_folder_graphs,
                                                            input_folder_transformations,
                                                            input_folder_results,
                                                            export_folder_grid,
                                                            export_folder_results,
                                                            output_filename,
                                                            batch_size,
                                                            verbose
                                                        )
                                                    
                                                    
        elif selected_option_3 in ['3-6', '3-7']:
            input_folder_processed_results=args.input_folder_processed_results
            export_folder_dataframes = args.export_folder_dataframes
            export_folder_grid = args.export_folder_grid
            output_filename = args.output_filename
            batch_size = args.batch_size if args.batch_size else 1
            
            compute_grid_stack_result_into_dataframe(
                                                        input_folder_processed_results,
                                                        export_folder_dataframes,
                                                        export_folder_grid,
                                                        output_filename,
                                                        batch_size,
                                                        verbose
                                                    )
                
                                                    
            
    elif selected_option == 'option4':
        # Process compute grid for the problem generation
        compute_grid = args.input_file
        n_core = args.n_core
        with open(compute_grid, 'r') as file:
            commands = file.readlines()
            
        if n_core>1:
            # Create a ThreadPoolExecutor with n workers
            with concurrent.futures.ThreadPoolExecutor(max_workers=n_core) as executor:
                # Create a progress bar with tqdm
                progress_bar = tqdm(total=len(commands))
                futures = {executor.submit(subprocess.run, command.strip(), shell=True, capture_output=True): command for command in commands}
                for future in concurrent.futures.as_completed(futures):
                    command = futures[future]
                    try:
                        result = future.result()
                        logger.debug(f'Output : {result.stdout.decode()}')
                        logger.error(f'Error : {result.stderr.decode()}')
                            
                    except Exception as exc:
                        logger.exception(f'Command {command} failed: {exc}')
                    progress_bar.update(1)
        else:
            for command in tqdm(commands):
                #process = subprocess.Popen(command.strip(), shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                #stdout, stderr = process.communicate()
                process = subprocess.Popen(command.strip(), shell=True, stdout=sys.stdout, stderr=subprocess.STDOUT)
                process.wait()


                #if verbose:
                #    print('Output:', stdout.decode())
                #    print('Error:', stderr.decode())
                    
                    
                #time.sleep(0.1)  # laptop in fire
                
    elif selected_option == 'option5':
        selected_option_5 = args.selected_option_5
        
        if selected_option_5 == '5-1':
            num_partitions = args.num_partitions
            max_sub_length = args.max_sub_length
            input_file = args.input_file 
            export_folder_problems = args.export_folder_problems
            export_folder_transformations = args.export_folder_transformations
                
            problem_maker(
                            num_partitions,
                            max_sub_length,
                            input_file,
                            export_folder_problems,
                            export_folder_transformations,
                            verbose
                        )
                        
        elif selected_option_5 == '5-2':
            before_graph_file = args.before_graph_file
            after_graph_result_file = args.after_graph_result_file
            transformation_file = args.transformation_file
            export_folder_results = args.export_folder_results
            output_filename = args.output_filename
            
            process_result_before_vs_after(
                                            before_graph_file,
                                            after_graph_result_file,
                                            transformation_file,
                                            export_folder_results,
                                            output_filename,
                                            verbose,
                                        )
                                        
        elif selected_option_5 == '5-3':
            input_file = args.input_file
            
            process_result_before_vs_after_batch(
                                            input_file,
                                            verbose,
                                        )
                                        
        elif selected_option_5 == '5-4':
            input_process_result_file_before = args.input_process_result_file_before
            input_process_result_file_after = args.input_process_result_file_after
            export_edge_dataframe_file = args.export_edge_dataframe_file
            export_meta_dataframe_file = args.export_meta_dataframe_file
            
            stack_result_into_dataframe(
                                            input_process_result_file_before,
                                            input_process_result_file_after,
                                            export_edge_dataframe_file,
                                            export_meta_dataframe_file,
                                            verbose
                                        )
        elif selected_option_5 == '5-5':
            input_file = args.input_file
            
            stack_result_into_dataframe_batch(
                                            input_file,
                                            verbose,
                                        )
                                        
    if selected_option == 'option8':
        test(verbose)
        #shortest_path_rewind(verbose)

# xxxxxx-NPP-yyyyyy         := normal npp problem
# xxxxxx-NPP-yyyyyy-R       := revised npp problem
# xxxxxx-NPP-yyyyyy-T       := transformation file
# xxxxxx-NPP-yyyyyy-(R-)RR  := raw result
# xxxxxx-NPP-yyyyyy-(R-)PR  := process result that compare the original problem with the transformed one


# Option 1
# python src/main.py option1 --verbose true

# Option 2
# python src/main.py option2 -f '/home/fiftyfour/Documents/Code/other/d50-12-10.json' -r 1 -i 1 -e '/home/fiftyfour/Documents/Code/result/'

# Option 3
# python src/python/main.py option3 3-1 --num_partitions 100 --max_sub_length 3 --input_folder './data/from_github/problems' --export_folder_grid './data/modified' --export_folder_problems './data/modified/problems' --export_folder_transformations './data/modified/transformations' --output_filename 'compute_grid_problem_generation' --verbose true
# python src/python/main.py option3 3-2 --input_folder './data/modified/problems' --export_folder_grid './data/modified' --export_folder_results './data/modified/results' --output_filename 'compute_grid_julia' --verbose true
# python src/python/main.py option3 3-3 --input_folder './data/modified/problems' --export_folder_grid './data/modified' --export_folder_results './data/modified/results' --output_filename 'compute_grid_julia' --verbose true
# python src/python/main.py option3 3-4 --input_folder_graphs './data/modified/problems' --input_folder_transformations './data/modified/transformations' --input_folder_results './data/modified/results' --export_folder_grid './data/modified' --export_folder_results './data/modified/result_process' --output_filename 'compute_grid_result_process' --verbose true

# Option 4
# python src/python/main.py option4 --input_file './data/modified/compute_grid_problem_generation.txt' --n_core 1 --verbose true

# Option 5
# python src/python/main.py option5 5-1 --num_partitions 10 --max_sub_length 3 --input_file './other/i30-01.json' --export_folder_problems './other/i30-01/problems' --export_folder_transformations './other/i30-01/transformations' --verbose true
# python src/python/main.py option5 5-1 --process_result_file_before '' --process_result_file_after


# Exemple avec other
# python src/python/main.py option3 3-2 --input_folder './other/i30-01/problems' --export_folder_grid './other/i30-01/' --export_folder_results './other/i30-01/results' --output_filename 'compute_grid_julia_i30-01' --verbose true
# python src/python/main.py option3 3-3 --input_folder './other/i30-01/problems' --export_folder_grid './other/i30-01/' --export_folder_results './other/i30-01/results' --output_filename 'compute_grid_julia_i30-01' --verbose true
# python src/python/main.py option4 --input_file './other/i30-01/compute_grid_julia_i30-01.txt' --n_core 1
# python src/python/main.py option3 3-4 --input_folder_graphs './other/i30-01/problems' --input_folder_transformations './other/i30-01/transformations' --input_folder_results './other/i30-01/results' --export_folder_grid './other/i30-01' --export_folder_results './other/i30-01/result_process' --output_filename 'compute_grid_result_process_i30-01' --verbose true


# python src/python/main.py option3 3-3 --input_folder './other/result_processing/graphs' --export_folder_grid './other/result_processing/' --export_folder_results './other/result_processing/results' --output_filename 'compute_grid_julia' --verbose true
# python src/python/main.py option4 --input_file './other/result_processing/compute_grid_julia.txt' --n_core 1


# 1) Create problem generation compute grid
# 2) Process problem generation compute grid

#python src/python/main.py option5 5-1 --num_partitions 100 --max_sub_length 4 --input_file './data/from_github/problems/progressive/i45-10.json' --export_folder_problems './other/result_processing/graphs' --export_folder_transformations './other/result_processing/transformations' --verbose true
# python src/python/main.py option3 3-2 --input_folder './other/result_processing/graphs' --export_folder_grid './other/result_processing/' --export_folder_results './other/result_processing/results' --output_filename 'compute_grid_julia' --verbose true
# python src/python/main.py option3 3-4 --input_folder_graphs './other/i30-01/problems' --input_folder_transformations './other/i30-01/transformations' --input_folder_results './other/i30-01/results' --export_folder_grid './other/i30-01' --export_folder_results './other/i30-01/result_process' --output_filename 'compute_grid_result_process_i30-01' --verbose true

# python src/python/main.py option3 3-4 --input_folder_graphs './other/result_processing/graphs' --input_folder_transformations './other/result_processing/transformations' --input_folder_results './other/result_processing/results' --export_folder_grid './other/result_processing' --export_folder_results './other/result_processing/result_process' --output_filename 'compute_grid_result_process' --verbose true
