from config import *
from unit_test.unit_test import main as unit_test
from test.test_approx_max_clique import main as test_approx_max_clique

from test.result_processing import process_result_before_vs_after
from test.problem_maker import main as problem_maker
from test.test import main as test
from test.compute_grid import compute_grid_problem_generation, compute_grid_julia, compute_grid_process_result_before_vs_after

# Option
# X 1) unit test
# X 2) networkx.approximation.max_clique vs my.max_clique performance test
# 3) compute grid
# X 3.1) problems generation
# X 3.2) julia commands
#   3.3) result process
#   3.4) result stacking
# X 4) process compute grid
# 5) indivual result_process
#   5.1) process_result_before_vs_after
#   5.2) stack_result_into_dataframe
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
    
    # Option 5 - individual problem maker
    option_5(subparsers)
    
    
    args = parser.parse_args(sys.argv[1:])
    selected_option = args.selected_option
    
    
    ##################################################################
    if args.verbose:
        verbose = True if args.verbose.lower() == 'true' else False
    else:
        verbose = False
        
    if verbose:
        header = ['Key', 'Value']
        rows = [(k, v) for k, v in args.__dict__.items()]
        print(tabulate(rows, headers=header))
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
        elif selected_option_3 == '3-2':
            input_folder = args.input_folder
            export_folder_grid = args.export_folder_grid
            export_folder_results = args.export_folder_results
            output_filename = args.output_filename
            
            compute_grid_julia(
                                input_folder,
                                export_folder_grid,
                                export_folder_results,
                                output_filename,
                                verbose
                                )
                                
        elif selected_option_3 == '3-3':
        
            input_folder_graphs = args.input_folder_graphs
            input_folder_transformations = args.input_folder_transformations
            input_folder_results = args.input_folder_results
            export_folder_grid = args.export_folder_grid
            export_folder_results = args.export_folder_results
            output_filename = args.output_filename
            
            compute_grid_process_result_before_vs_after(
                                                        input_folder_graphs,
                                                        input_folder_transformations,
                                                        input_folder_results,
                                                        export_folder_grid,
                                                        export_folder_results,
                                                        output_filename,
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
                        if verbose:
                            print('Output:', result.stdout.decode())
                            print('Error:', result.stderr.decode())
                    except Exception as exc:
                        print(f'Command {command} failed: {exc}')
                    progress_bar.update(1)
        else:
            for command in tqdm(commands):
                process = subprocess.Popen(command.strip(), shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                stdout, stderr = process.communicate()

                if verbose:
                    print('Output:', stdout.decode())
                    print('Error:', stderr.decode())
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
        #elif selected_option_5 == '5-3':
        #    process_result_file_before = args.process_result_file_before
        #    process_result_file_after = args.process_result_file_after
        #    edge_dataframe_file = args.edge_dataframe_file
        #    meta_dataframe_file = args.meta_dataframe_file
        #    
        #    process_result_before_vs_after(
        #                                    process_result_file_before,
        #                                    process_result_file_after,
        #                                    edge_dataframe_file,
        #                                    meta_dataframe_file,
        #                                    verbose
        #                                )
    

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
# python src/python/main.py option3 3-3 --input_folder_graphs './data/modified/problems' --input_folder_transformations './data/modified/transformations' --input_folder_results './data/modified/results' --export_folder_grid './data/modified' --export_folder_results './data/modified/result_process' --output_filename 'compute_grid_result_process' --verbose true


# Option 5
# python src/python/main.py option5 5-1 --num_partitions 10 --max_sub_length 3 --input_file './other/i30-01.json' --export_folder_problems './other/i30-01/problems' --export_folder_transformations './other/i30-01/transformations' --verbose true
# python src/python/main.py option5 5-1 --process_result_file_before '' --process_result_file_after


# Exemple avec other
# python src/python/main.py option3 3-2 --input_folder './other/i30-01/problems' --export_folder_grid './other/i30-01/' --export_folder_results './other/i30-01/results' --output_filename 'compute_grid_julia_i30-01' --verbose true
# python src/python/main.py option4 --input_file './other/i30-01/compute_grid_julia_i30-01.txt' --n_core 1
# python src/python/main.py option3 3-3 --input_folder_graphs './other/i30-01/problems' --input_folder_transformations './other/i30-01/transformations' --input_folder_results './other/i30-01/results' --export_folder_grid './other/i30-01' --export_folder_results './other/i30-01/result_process' --output_filename 'compute_grid_result_process_i30-01' --verbose true





if False:
        
                    
            
        if selected_option == 'option6':
            # testing
            # python src/main.py option6
            
        
        elif selected_option == 'option7':
            # plot testing
            # python src/main.py option7 --input_file ...
            input_file = args.input_file
            test(input_file)
            
            
        elif selected_option == 'option8':
            # result_processing
            before_graph_file = args.before_graph_file
            after_graph_result_file = args.after_graph_result_file
            transformation_file = args.transformation_file
            export_folder = args.export_folder
            filename = args.filename
            
            """
            python src/main.py option8\
            --before_graph_file 'other/result_processing/graph/000000-NPP-i30-01.json' \
            --after_graph_result_file 'other/result_processing/result/000002-NPP-i30-01-R.json' \
            --transformation_file 'other/result_processing/transformation/000002-T-i30-01.pkl' \
            --export_folder 'other/result_processing/result_process' \
            --filename '000002-NPP-i30-01-PR' \
            --verbose true
            """
            process_result_before_vs_after(before_graph_file, after_graph_result_file, transformation_file, export_folder, filename, verbose)
            
            
        elif selected_option == 'option9':
            """
            python src/main.py option9 \
             --result_file_before 'other/result_processing/result_process/000000-NPP-i30-01-PR.pkl' \
             --result_file_after 'other/result_processing/result_process/000002-NPP-i30-01-PR.pkl' \
             --verbose true
            """
            result_file_before = args.result_file_before
            result_file_after = args.result_file_after
            
            
        compare(result_file_before, result_file_after, verbose)
