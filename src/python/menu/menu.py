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
    description = textwrap.dedent("""Test performance of nx.approximation.max_clique vs my approx_max_clique.""")
    help = 'testing.experience_approx_max_clique_sh.py'
    parser_ = subparsers_.add_parser(
                                    name=name,
                                    description=description,
                                    formatter_class=argparse.RawTextHelpFormatter,
                                    help=help
                                )

    parser_.add_argument('-f', '--input_file', type=str, help='NPP JSON problem')
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
                                    
    # key : name, values: (description:str, help:str)   
    options = {}
    
    options['3-0'] = (
                'Prepare maximum clique experience (parameters in config.prebuilt_a00_prepare_max_clique_script_sh)',
                'prebuilt.a00_prepare_max_clique_script_sh.py'
            )
    options['3-1'] = (
                'Problem generation (parameters in config.prebuilt_a03_problem_generation)',
                'prebuilt.a01_problem_generation.py'
                )
    options['3-2'] = (
                'Time config original problem (parameters in config.prebuilt_a02_time_config)',
                'prebuilt.a02_time_config.py'
                )
    options['3-3'] = (
                'Prepare original (parameters in config.prebuilt_a01_prepare_sh_original)',
                'prebuilt.a03_prepare_sh_original.py'
                )
    options['3-4'] = (
                'Prepare sh task (parameters in config.prebuilt_a04_prepare_sh_task)',
                'prebuilt.a04_prepare_sh_task.py'
                )
    options['3-5'] = (
                'Processing result (parameters in config.a05_prebuilt_post_processing_result)',
                'prebuilt.a05_post_processing_result.py'
                )
    
    def option_3_(subparsers_, name, description, help):
        description = textwrap.dedent(description)
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
    
    for name, (description, help) in options.items():
        option_3_(subparsers__, name, description, help)
        
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
        help = 'testing.problem_maker.py'
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
        description = textwrap.dedent("Post process original result")
        help = 'testing.result_processing.post_process_original'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
        parser_.add_argument('--directory_input', type=str, help='directory with json batches')
        parser_.add_argument('--directory_output', type=str, help='directory to output pkl post process result batches')
        parser_.add_argument('--output_name', type=str, help='output name')
        
    def option_5_3(subparsers_):
        name = '5-3'
        description = textwrap.dedent("Post process result")
        help = 'testing.result_processing.post_process'
        parser_ = subparsers_.add_parser(
                                        name=name,
                                        description=description,
                                        formatter_class=argparse.RawTextHelpFormatter,
                                        help=help
                                    )
                                    
        parser_.add_argument('--directory_input', type=str, help='directory with json batches')
        parser_.add_argument('--directory_output', type=str, help='directory to output pkl post process result batches')
        parser_.add_argument('--directory_original', type=str, help='directory where are the original problems and transformations')
        parser_.add_argument('--output_name', type=str, help='output name')
        
    
    option_5_1(subparsers__)
    option_5_2(subparsers__)
    option_5_3(subparsers__)
    
    
    

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
