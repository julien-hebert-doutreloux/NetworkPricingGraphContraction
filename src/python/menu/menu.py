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
    #parser_.add_argument('--verbose', help='Print information')
    
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
    #parser_.add_argument('--verbose', help='Print information')
    

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
        description = textwrap.dedent("Problem transformation generation")
        help = 'test.compute_grid.py'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--num_partitions', type=int, help='number of random partitions')
        parser_.add_argument('--max_sub_length', type=int, help='maximum length of a subset of a partition')
        parser_.add_argument('--input_folder', type=str, help='input folder where are the original NPP json file')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='Path to the export compute grid')
        parser_.add_argument('--export_folder_problems', type=str, required=True, help='Path to the export NPP json')
        parser_.add_argument('--export_folder_transformations', type=str, required=True, help='Path to the export transformation PKL')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        #parser_.add_argument('--verbose', help='Print information')
    
    
    def option_3_2(subparsers_): 
        name = '3-2'
        description = textwrap.dedent("Julia commands individual")
        help = 'test.compute_grid.compute_grid_individual_julia'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder', type=str, help='input parent folder where are the original NPP json file')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='prepare parent folder to the export result of julia result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        #parser_.add_argument('--verbose', help='Print information')
        
        
    def option_3_3(subparsers_): 
        name = '3-3'
        description = textwrap.dedent("Julia commands batch")
        help = 'test.compute_grid.compute_grid_batch_julia'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder', type=str, help='input parent folder where are the original NPP json file')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='prepare parent folder to the export result of julia result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        parser_.add_argument('--batch_size', type=int, required=True, help='Batch size (number of problem in one batch)')
        #parser_.add_argument('--verbose', help='Print information') 
    
    def option_3_4(subparsers_): 
        name = '3-4'
        description = textwrap.dedent("process result commands")
        help = 'test.compute_grid.compute_grid_process_result_before_vs_after'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder_graphs', type=str, help='input parent folder where are the NPP json file')
        parser_.add_argument('--input_folder_transformations', type=str, help='input parent folder where are the transformation pkl file')
        parser_.add_argument('--input_folder_results', type=str, help='input parent folder where are the julia result json file')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='parent folder for processed result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        #parser_.add_argument('--verbose', help='Print information')
        
        
    def option_3_5(subparsers_): 
        name = '3-5'
        description = textwrap.dedent("process result commands batch")
        help = 'test.compute_grid.compute_grid_process_result_before_vs_after'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder_graphs', type=str, help='input parent folder where are the NPP json file')
        parser_.add_argument('--input_folder_transformations', type=str, help='input parent folder where are the transformation pkl file')
        parser_.add_argument('--input_folder_results', type=str, help='input parent folder where are the julia result json file')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='parent folder for processed result')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        parser_.add_argument('--batch_size', type=int, required=True, help='Batch size')
        #parser_.add_argument('--verbose', help='Print information')
        
    def option_3_6(subparsers_): 
        name = '3-6'
        description = textwrap.dedent("process stacking results commands")
        help = 'test.compute_grid.stack_result_into_dataframe'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder_processed_results', type=str, help='Processed result pkl file path')
        parser_.add_argument('--export_folder_dataframes', type=str, help='Parent folder to export dataframes')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        #parser_.add_argument('--verbose', help='Print information')
        
        
    def option_3_7(subparsers_): 
        name = '3-7'
        description = textwrap.dedent("process stacking results commands batch")
        help = 'test.compute_grid.stack_result_into_dataframe'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        parser_.add_argument('--input_folder_processed_results', type=str, help='Processed result pkl file path')
        parser_.add_argument('--export_folder_dataframes', type=str, help='Parent folder to export dataframes')
        parser_.add_argument('--export_folder_grid', type=str, required=True, help='path to the export compute grid')
        parser_.add_argument('--output_filename', type=str, required=True, help='Output filename')
        parser_.add_argument('--batch_size', type=int, required=True, help='Batch size')
        #parser_.add_argument('--verbose', help='Print information')
        
    option_3_1(subparsers__)
    option_3_2(subparsers__)
    option_3_3(subparsers__)
    option_3_4(subparsers__)
    option_3_5(subparsers__)
    option_3_6(subparsers__)
    option_3_7(subparsers__)

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
    #parser_.add_argument('--verbose', help='Print information')
        
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
        parser_.add_argument('--max_sub_length', type=int, help='maximum length of a subset of a partition')
        parser_.add_argument('--input_file', type=str, help='NPP json file path')
        parser_.add_argument('--export_folder_problems', type=str, required=True, help='folder to export NPP json')
        parser_.add_argument('--export_folder_transformations', type=str, required=True, help='folder to export transformation PKL')
        #parser_.add_argument('--verbose', help='Print information')
    
        
        
        
    def option_5_2(subparsers_): 
        name = '5-2'
        description = textwrap.dedent("Process raw result")
        help = 'test.result_processing.process_result_before_vs_after'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
        parser_.add_argument('--before_graph_file', type=str, help='NPP json path of the problem before transformation')
        parser_.add_argument('--after_graph_result_file', type=str, help='NPP json path after transformation')
        parser_.add_argument('--transformation_file', type=str, help='transformation pkl file path')
        parser_.add_argument('--export_folder_results', type=str, required=True, help='folder to export the processed results')
        parser_.add_argument('--output_filename', type=str, required=True, help='processed result filename')
        #parser_.add_argument('--verbose', help='Print information')
        
    def option_5_3(subparsers_): 
        name = '5-3'
        description = textwrap.dedent("Process raw result batch")
        help = 'test.result_processing.process_result_before_vs_after_batch'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
        parser_.add_argument('--input_file', type=str, help='batch file')
        #parser_.add_argument('--verbose', help='Print information')
        
    def option_5_4(subparsers_): 
        name = '5-4'
        description = textwrap.dedent("Stacking result")
        help = 'test.result_processing.stack_result_into_dataframe'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
        
        parser_.add_argument('--input_process_result_file_before', type=str, help='File path to json raw result before transformation')
        parser_.add_argument('--input_process_result_file_after', type=str, help='File path to json raw result after transformation')
        parser_.add_argument('--export_edge_dataframe_file', type=str, help='File path to pkl tolled edge dataframe')
        parser_.add_argument('--export_meta_dataframe_file', type=str, required=True, help='File path to pkl meta dataframe')
        #parser_.add_argument('--verbose', help='Print information')
        
        
    def option_5_5(subparsers_): 
        name = '5-5'
        description = textwrap.dedent("Stacking result batch")
        help = 'test.result_processing.stack_result_into_dataframe_batch'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
        parser_.add_argument('--input_file', type=str, help='batch file')
        #parser_.add_argument('--verbose', help='Print information')
    

    option_5_1(subparsers__)
    option_5_2(subparsers__)
    option_5_3(subparsers__)
    option_5_4(subparsers__)
    option_5_5(subparsers__)
    
    

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
    #parser_.add_argument('--verbose', help='Print information')    
    
    
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
    #parser_.add_argument('--verbose', help='Print information')
                                
