from preamble.preamble import *

PARAMETERS = config.menu_menu(__name__)
logger = config.log(**PARAMETERS['logger'])

def option_1(subparsers_):
    name = 'option1'
    description = textwrap.dedent("Unit test")
    help = 'unit_test.unit_test.py'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
    
def option_2(subparsers_):
    name = 'option2'
    description = textwrap.dedent("""Test performance of nx.approximation.max_clique vs my approx_max_clique. This script can be parallelize as follow\n```seq number_of_iteration | parallel -j number_of_threads python src/main.py option2 -f 'path_to_your_json' -r 1 -i {} -e 'export_path'```""")
    help = 'test.test_approx_max_clique.py'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )

    parser_.add_argument('-f', '--input_file', type=str, help='NPP JSON problem')
    parser_.add_argument('-r', '--formula_option', choices=['0', '1','2','3','4','5','6','7'], type=str, help='Rules affinity score formula option. See the Rules class')
    parser_.add_argument('-i', '--iteration', type=str, help='Iteration number')
    parser_.add_argument('-e', '--export_path', type=str, help='Result export path')
    

def option_3(subparsers_):
    name = 'option3'
    description = textwrap.dedent("Compute grid")
    help = 'test.compute_grid.py'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
                                
    subparsers__= parser_.add_subparsers(
                                        dest='selected_option_3',
                                        help='Option',
                                        required=True
                                    )
    def option_3_1(subparsers_):
        name = '3-1'
        description = textwrap.dedent("Prepare original (parameters in config.prebuilt_a01_prepare_sh_original)")
        help = 'prebuilt.a01_prepare_sh_original.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
    def option_3_2(subparsers_):
        name = '3-2'
        description = textwrap.dedent("Time config original problem (parameters in config.prebuilt_a02_time_config)")
        help = 'prebuilt.a02_time_config.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
                                    
                                    
    def option_3_3(subparsers_): 
        name = '3-3'
        description = textwrap.dedent("Problem generation (parameters in config.prebuilt_a03_problem_generation)")
        help = 'prebuilt.a03_problem_generation.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
    def option_3_4(subparsers_): 
        name = '3-4'
        description = textwrap.dedent("Prepare sh task (parameters in config.prebuilt_a04_prepare_sh_task)")
        help = 'prebuilt.a04_prepare_sh_task.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
                                    
    def option_3_5(subparsers_): 
        name = '3-5'
        description = textwrap.dedent("Processing result (parameters in config.a05_prebuilt_post_processing_result)")
        help = 'prebuilt.a05_post_processing_result.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
    
    
    option_3_1(subparsers__)
    option_3_2(subparsers__)
    option_3_3(subparsers__)
        
def option_5(subparsers_):
    name = 'option5'
    description = textwrap.dedent("Individual process")
    help = '...'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
                                
    subparsers__= parser_.add_subparsers(
                                        dest='selected_option_5',
                                        help='Option',
                                        required=True
                                    )
                                    
    def option_5_1(subparsers_): 
        name = '5-1'
        description = textwrap.dedent("Problem transformation generation")
        help = 'test.problem_maker.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--file_npp', type=str, help='file path to npp problem')
        parser_.add_argument('--directory_npp', type=str, help='directory path to export problem')
        parser_.add_argument('--directory_original', type=str, help='directory path to export the preprocess original problem')
        parser_.add_argument('--n', type=int, help='number of problem to generate')
        parser_.add_argument('--min_sl', type=int, help='minimum length of none trivial equivalence class')
        parser_.add_argument('--max_sl', type=int, help='maximum length of none trivial equivalence class')
        parser_.add_argument('--m', type=int, help='number of none trivail equivalence class')
        parser_.add_argument('--H1', type=int, help='Continuity-free edge equivalence class hypothesis')
        parser_.add_argument('--H2', type=int, help='Equivalence class assumption for elements of equal value')
        parser_.add_argument('--H3', type=int, help='Tolled element equivalence class hypothesis')
        parser_.add_argument('--H4', type=int, help='Local element only')
        parser_.add_argument('--max_attemp', type=int, help='number of try allowed to find one partition')
        parser_.add_argument('--batch_size', type=int, help='Batch size (number of problem in one batch)')
        
    
        
    def option_5_2(subparsers_):
        name = '5-2'
        description = textwrap.dedent("Process raw result")
        help = 'test.problem_maker.uniform_batch_merging'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_directory_graphs', type=str, help='directory with graphs pkl batches')
        parser_.add_argument('--input_directory_transformations', type=str, help='directory with transformations pkl batches')
        parser_.add_argument('--min_element', type=int, help='TO DO')
        parser_.add_argument('--max_element', type=int, help='TO DO')
    
    
    option_5_1(subparsers__)
    option_5_2(subparsers__)
    
    
    

def option_7(subparsers_):
    name = "option7"
    description = textwrap.dedent("""Plot test""")
    help='plot.plot_graph.py'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
    parser_.add_argument('--input_file', type=str, help='input the NPP json file')
    
    
def option_8(subparsers_):
    name = "option8"
    description = textwrap.dedent("""test""")
    help='test.test.py'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
                                
