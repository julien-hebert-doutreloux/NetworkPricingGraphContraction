from preamble.preamble import *
import subprocess
from unit_test.unit_test import main as unit_test
from test.test_approx_max_clique import main as test_approx_max_clique

from test.result_processing import process_result_before_vs_after
from test.problem_maker import main as problem_maker
from test.test import main as test
from test.compute_grid import compute_grid_problem_generation

import concurrent.futures
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

    # PARSER option - 1
    # Option 1
    ########################################################################################
    desc_option_1 = textwrap.dedent("""Unit test""")
    parser_option_1 = subparsers.add_parser(
                                            name="option1",
                                            description=desc_option_1,
                                            formatter_class=argparse.RawTextHelpFormatter,
                                            help='unit_test.unit_test.py'
                                            )
    parser_option_1.add_argument('--verbose', help='Print information')
    ########################################################################################
    #
    #
    #  
    #
    # PARSER option - 2
    # Option 2
    #############################################################################################################################################################################
    desc_option_2 = textwrap.dedent("""
    Test performance of nx.approximation.max_clique vs my approx_max_clique. This script can be parallelize as follow\n
    ```seq number_of_iteration | parallel -j number_of_threads python src/main.py option2 -f 'path_to_your_json' -r 1 -i {} -e 'export_path'```
    """)
    parser_option_2 = subparsers.add_parser(
                                            name="option2",
                                            description=desc_option_2,
                                            formatter_class=argparse.RawTextHelpFormatter,
                                            help='test.test_approx_max_clique.py'
                                            )

    parser_option_2.add_argument('-f', '--input_file', type=str, help='NPP JSON problem')
    parser_option_2.add_argument('-r', '--formula_option', choices=['0', '1','2','3','4','5','6','7'], type=str, help='Rules affinity score formula option. See the Rules class')
    parser_option_2.add_argument('-i', '--iteration', type=str, help='Iteration number')
    parser_option_2.add_argument('-e', '--export_path', type=str, help='Result export path')
    parser_option_2.add_argument('--verbose', help='Print information')
    #############################################################################################################################################################################
    #
    #
    #  
    #
    # PARSER option - 3
    # Option 3
    ##########################################################################################################################
    desc_option_3 = textwrap.dedent("""
                                    Problem transformation generation (compute grid)
                                """)
    parser_option_3 = subparsers.add_parser(
                                            name="option3",
                                            description=desc_option_3,
                                            formatter_class=argparse.RawTextHelpFormatter,
                                            help='test.compute_grid.py'
                                        )
                                        
    parser_option_3.add_argument('--num_partitions', type=int, help='number of random partitions')
    parser_option_3.add_argument('--max_sub_length', type=int, help='maximum length of a subset of a partition')
    parser_option_3.add_argument('--input_folder', type=str, help='input folder where are the original NPP json file')
    parser_option_3.add_argument('--export_folder_grid', type=str, required=True, help='Path to the export compute grid')
    parser_option_3.add_argument('--export_folder_problems', type=str, required=True, help='Path to the export NPP json')
    parser_option_3.add_argument('--export_folder_transformations', type=str, required=True, help='Path to the export transformation PKL')
    parser_option_3.add_argument('--output_filename', type=str, required=True, help='Output filename')
    parser_option_3.add_argument('--verbose', help='Print information')         
    ##########################################################################################################################
    desc_option_4 = textwrap.dedent("""
                                    Problem transformation generation
                                """)
    parser_option_4 = subparsers.add_parser(
                                            name="option4",
                                            description=desc_option_4,
                                            formatter_class=argparse.RawTextHelpFormatter,
                                            help='test.complete_test.py'
                                        )
                                        
    parser_option_4.add_argument('--input_file', type=str, help='input compute grid file')
    parser_option_4.add_argument('--verbose', help='Print information')      
    #
    #
    #  
    #
    # Testing option
    # Option 6
    ###################################################################################################################################################
    desc_option_6 = textwrap.dedent("""Individual Problem Maker""")
    parser_option_6 = subparsers.add_parser(
                                            name="option6",
                                            description=desc_option_6,
                                            formatter_class=argparse.RawTextHelpFormatter,
                                            help='unit_test.test.py'
                                            )
    parser_option_6.add_argument('--num_partitions', type=int, default=1000, help='Number of partitions to create (default: 1000)')
    parser_option_6.add_argument('--max_sub_length', type=int, default=3, help='Maximum length allowed of each element in the partition (default: 3)')
    parser_option_6.add_argument('--input_file', type=str, required=True, help='Path to the input JSON file')
    parser_option_6.add_argument('--export_folder_problems', type=str, required=True, help='Path to the export NPP json')
    parser_option_6.add_argument('--export_folder_transformations', type=str, required=True, help='Path to the export transformation PKL')
    parser_option_6.add_argument('--verbose', help='Print information')                           
    ##################################################################################################################################################
    #
    #
    #  
    #
    # ...
    # Option 7
    #########################################################################################
    desc_option_7 = textwrap.dedent("""Plot test""")
    parser_option_7 = subparsers.add_parser(
                                            name="option7",
                                            description=desc_option_7,
                                            formatter_class=argparse.RawTextHelpFormatter,
                                            help='plot.plot_graph.py'
                                            )
    parser_option_7.add_argument('--input_file', type=str, help='input the NPP json file')
    parser_option_7.add_argument('--verbose', help='Print information')                     
    #########################################################################################
    #
    #
    #  
    #
    # ...
    # Option 8
    ############################################################################################################
    desc_option_8 = textwrap.dedent("""Result processing""")
    parser_option_8 = subparsers.add_parser(
                                            name="option8",
                                            description=desc_option_8,
                                            formatter_class=argparse.RawTextHelpFormatter,
                                            help='test.result_processing.py'
                                            )
    parser_option_8.add_argument('--before_graph_file', type=str, help='Original graph json file')
    parser_option_8.add_argument('--after_graph_result_file', type=str, help='transformed graph result file')
    parser_option_8.add_argument('--transformation_file', type=str, help='transformation pkl file')
    parser_option_8.add_argument('--export_folder', type=str, help='folder where the process result go')
    parser_option_8.add_argument('--filename', type=str, help='filename of the process result')
    parser_option_8.add_argument('--verbose', help='Print information')
    ############################################################################################################
    #
    #
    #  
    #
    # ...
    # Option 9
    #####################################################################################################
    desc_option_9 = textwrap.dedent("""Result processing""")
    parser_option_9 = subparsers.add_parser(
                                            name="option9",
                                            description=desc_option_9,
                                            formatter_class=argparse.RawTextHelpFormatter,
                                            help='test.result_processing.compare.py'
                                            )
    parser_option_9.add_argument('--result_file_before', type=str, help='Original graph json file')
    parser_option_9.add_argument('--result_file_after', type=str, help='transformed graph result file')
    parser_option_9.add_argument('--verbose', help='Print information')
    ######################################################################################################
    
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
        #"""
        #python src/python/main.py option3 \ 
        #--num_partitions 1000 \
        #--max_sub_length 3 \
        #--input_folder '/home/fiftyfour/Documents/Code/data/from_github/problems' \
        #--export_folder_problems '/home/fiftyfour/Documents/Code/data/modified/problems' \
        #--export_folder_transformations '/home/fiftyfour/Documents/Code/data/modified/transformations' \
        #--filename 'compute_grid_problem_generation' \
        #--verbose true
        #"""
        
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
        
    elif selected_option == 'option4':

        compute_grid = args.input_file
        with open(compute_grid, 'r') as file:
            commands = file.readlines()

        # Create a ThreadPoolExecutor with 4 workers
        with concurrent.futures.ThreadPoolExecutor(max_workers=4) as executor:
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
            
    elif selected_option == 'option5':
        # Problem generation
        ...
        
        
        
    elif selected_option == 'option6':
        # testing
        # python src/main.py option6
        num_partitions = args.num_partitions
        max_sub_length = args.max_sub_length
        input_file = args.input_file 
        export_folder_problems = args.export_folder_problems
        export_folder_transformations = args.export_folder_transformations
                
        problem_maker(num_partitions, max_sub_length, input_file, export_folder_problems, export_folder_transformations, verbose)
    
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
        

# xxxxxx-NPP-yyyyyy     := normal npp problem
# xxxxxx-NPPR-yyyyy     := revised npp problem
# xxxxxx-T-yyyyy        := transformation file
# xxxxxx-NPP(R)-yyyy-R  := raw result
# xxxxxx-NPP(R)-yyyy-PR := process result that compare the original problem with the transformed one



# python src/main.py option1 --verbose true
# python src/main.py option2 -f '/home/fiftyfour/Documents/Code/other/d50-12-10.json' -r 1 -i 1 -e '/home/fiftyfour/Documents/Code/result/'
