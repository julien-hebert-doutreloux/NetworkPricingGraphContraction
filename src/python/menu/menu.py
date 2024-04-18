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
        description = textwrap.dedent("Problem transformation generation (parameters in config.test_compute_grid)")
        help = 'test.compute_grid.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_directory', type=str, help='input directory where the original NPP json file are')
        parser_.add_argument('--export_directory_grid', type=str, required=True, help='Path to the export compute grid')
        parser_.add_argument('--export_directory_graphs', type=str, required=True, help='Path to the export NPP json')
        parser_.add_argument('--export_directory_transformations', type=str, required=True, help='Path to the export transformation PKL')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
    
    
    def option_3_2(subparsers_):
        name = '3-2'
        description = textwrap.dedent("Batch uniformisation")
        help = 'test.compute_grid.batch '
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_directory_graphs', type=str, help='directory where the batches of graphs are')
        parser_.add_argument('--input_directory_transformations', type=str, required=True, help='directory where the batches of transformations are')
        parser_.add_argument('--export_directory_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
    
    def option_3_3(subparsers_): 
        name = '3-3'
        description = textwrap.dedent("Julia commands")
        help = 'test.compute_grid.compute_grid_julia'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_directory_graphs', type=str, help='input parent directory where are the original NPP json file')
        parser_.add_argument('--export_directory_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_directory_results', type=str, required=True, help='prepare parent directory to the export result of julia result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        


    
    option_3_1(subparsers__)
    option_3_2(subparsers__)
    option_3_3(subparsers__)
    #option_3_4(subparsers__)
    #option_3_5(subparsers__)
    #option_3_6(subparsers__)
    #option_3_7(subparsers__)

def option_4(subparsers_):
    name = 'option4'
    description = textwrap.dedent("Process compute grid")
    help = '...'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )
                                
    parser_.add_argument('--input_file', type=str, help='input compute grid file')
    parser_.add_argument('--n_core', type=int, help='number of cores')
        
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
        parser_.add_argument('--num_partitions', type=int, help='number of random partitions')
        parser_.add_argument('--min_sub_length', type=int, help='minimum length of a equivalence class in partition')
        parser_.add_argument('--max_sub_length', type=int, help='maximum length of a equivalence class in partition')
        parser_.add_argument('--number_not_trivial_class', type=int, help='number of none trivial equivalence class in partition')
        parser_.add_argument('--H4', type=str, help='Applied the local hypothesis in the partition')
        parser_.add_argument('--input_file', type=str, help='NPP json file path')
        parser_.add_argument('--export_directory_graphs', type=str, required=True, help='directory to export NPP json')
        parser_.add_argument('--export_directory_transformations', type=str, required=True, help='directory to export transformation PKL')
        parser_.add_argument('--batch_size', type=int, required=True, help='Batch size (number of problem in one batch)')
        
        
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
                                
