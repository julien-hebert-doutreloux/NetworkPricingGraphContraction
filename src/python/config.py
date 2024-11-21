import logging
import os


def log(
        filename,
        logger_name=__name__,
        logger_level=logging.DEBUG,
        stream_handler_level=logging.DEBUG,
        file_handle_level=logging.DEBUG,
        formatter=logging.Formatter('%(asctime)s:%(name)s:%(message)s')
        ):
    logger = logging.getLogger(logger_name)
    logger.setLevel(logger_level)

    file_handler = logging.FileHandler(filename)
    file_handler.setLevel(file_handle_level)
    file_handler.setFormatter(formatter)

    stream_handler = logging.StreamHandler()
    stream_handler.setLevel(stream_handler_level) 
    stream_handler.setFormatter(formatter)

    logger.addHandler(file_handler)
    logger.addHandler(stream_handler)
    return logger
    
# main

def main_main(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'main.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(levelname)s:%(message)s')
    
    # OTHER PARAMETERS
    return parameters
# Module

##############
## ANALYSIS ##
##############

# analysis.analysis.py
def analysis_analysis(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'analysis.analysis.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    
    # OTHER PARAMETERS
    return parameters
    
    
###########
## GAMMA ##
###########
# gamma.gamma.py
def gamma_gamma(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'gamma.gamma.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    return parameters
 
# gamma.common.py
def gamma_common(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'gamma.common.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    return parameters
    
# gamma.partition.py
def gamma_partition(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'gamma.partition.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
# gamma.rules.py
def gamma_rules(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'gamma.rules.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
 
 
###############
## UNIT_TEST ## 
###############

#unit_test.examples.py
def unit_test_examples(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.examples.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters

#unit_test.tools.py
def unit_test_tools(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.tools.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.DEBUG
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
# unit_test.unit_test.py
def unit_test_unit_test(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.unit_test.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.DEBUG
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters


    
# unit_test.unit_test_common.py
def unit_test_unit_test_common(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.unit_test_common.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.DEBUG
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
# unit_test.unit_test_gamma.py
def unit_test_unit_test_gamma(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.unit_test_gamma.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.DEBUG
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
# unit_test_unit_test_graph.py
def unit_test_unit_test_graph(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.unit_test_graph.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.DEBUG
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
# unit_test.unit_test_partition.py
def unit_test_unit_test_partition(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.unit_test_partition.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.DEBUG
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters

# unit_test.unit_test_plot_graph.py
def unit_test_unit_test_plot_graph(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.unit_test_plot_graph.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
# unit_test.unit_test_rules.py
def unit_test_unit_test_rules(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'unit_test.unit_test_rules.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.DEBUG
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
##########
## MENU ##
##########

# menu.menu.py
def menu_menu(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'menu.menu.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
###########
## GRAPH ##
###########

# graph.graph.py
def graph_graph(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'graph.graph.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')    
    # OTHER PARAMETERS
    return parameters
    
##########
## TEST ##
##########

# test.compute_grid.py
def test_compute_grid(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'test.compute_grid.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    parameters['h_limit'] = '05'
    parameters['m_limit'] = '00'
    parameters['m_limit'] = '00'
    return parameters

# test.problem_maker.py
def test_problem_maker(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'test.problem_maker.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    return parameters

# test.result_processing.py
def test_result_processing(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'test.result_processing.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    return parameters

# test.shortest_path_rewind.py
def test_shortest_path_rewind(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'test.shortest_path_rewind.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.WARNING
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    return parameters

# test.test.py
def test_test(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'test.test.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    return parameters

# test.test_approx_max_clique.py
def test_test_approx_max_clique(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'test.test_approx_max_clique.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    return parameters
    
##############
## PREBUILT ##
##############
def prebuilt_a00_prepare_max_clique_script_sh(name):
    parameters = {}
    
    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.a00_prepare_max_clique_script_sh.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    
    # OTHER PARAMETERS
    parameters['MISC'] = {}
    
    parameters['MISC']['directory_problem'] = './data/from_github/problems/'    # folder where NPP problem can be found 
    parameters['MISC']['export_path'] = './result/max_clique/'                  # export folder for maximum clique result
    parameters['MISC']['directory_sh'] = './src/sh/'                            # output for sh generated file
    
    # server setttings
    parameters['MISC']['cpu'] = 1
    parameters['MISC']['ram'] = 2
    parameters['MISC']['h'] = 1
    parameters['MISC']['m'] = 25
    parameters['MISC']['s'] = 0
    
    parameters['MISC']['n_try'] = 240                                           # number of times the algorithm to find the maximum clique is running
    parameters['MISC']['batch_size'] = 3                                        # number of commands in the same sh file
    
    parameters['MISC']['server_time_buffer'] = 300                              # time buffer for server
    parameters['MISC']['partition'] = 'optimum'                                 # setting for server
    parameters['MISC']['preamble_args'] = ['module load python/3.12.0', 'source venev/bin/activate']    # preamble args for sh file
    
    return parameters
    
    
def prebuilt_a01_problem_generation(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.a01_problem_generation.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    
    # OTHER PARAMETERS
    # Problem generation parameters
    parameters['MISC'] = {}
    
    min_sl = [2, 3, 4, 5,    2, 3, 4, 5,    2, 3, 4, 5,    2, 3, 4, 5,     2, 2, 2, 2]
    min_sl += min_sl

    max_sl = [2, 3, 4, 5,    2, 3, 4, 5,    2, 3, 4, 5,    2, 3, 4, 5,     0, 0, 0, 0]
    max_sl += max_sl

    m      = [1, 1, 1, 1,    2, 2, 2, 2,    3, 3, 3, 3,    0, 0, 0, 0,     0, 0, 0, 0]

    H1 = [1 for _ in m]
    H2 = [1 for _ in m]
    H3 = [1 for _ in m]
    H4 = [1 for _ in m]

    H1 += H1
    H2 += H2
    H3 += H3
    H4 += [0 for _ in m]
    m += m

    n  = [100 for _ in m]
    max_attemp = [2500 for _ in m]
    batch_size = 100

    parameters['MISC']['n'] = n                     # number of transformations to generates
    parameters['MISC']['min_sl'] = min_sl           # minimum length for all none trivial arcs equivalence class
    parameters['MISC']['max_sl'] = max_sl           # maximum length for all none trivial arcs equivalence class
    parameters['MISC']['m'] = m                     # number of none trivial arc equivalence class
    parameters['MISC']['H1'] = H1                   # continuity-free edge equivalence class hypothesis (0,1)
    parameters['MISC']['H2'] = H2                   # Equivalence class assumption for elements of equal value (0,1)
    parameters['MISC']['H3'] = H3                   # Tolled element equivalence class hypothesis (0,1)
    parameters['MISC']['H4'] = H4                   # Local element only (0,1)
    parameters['MISC']['max_attemp'] = max_attemp
    parameters['MISC']['batch_size'] = batch_size
    
    parameters['MISC']['directory_input'] = './data/from_github/problems/paper'             # input folder where github original problems can be found
    parameters['MISC']['directory_output'] = './data/generated/problems/paper'              # output folder for transformed problems
    parameters['MISC']['directory_original'] = './data/generated/problems/paper/original'   # input folder where original problems can be found
    parameters['MISC']['directory_sh'] = './src/sh'                                         # output for sh generated file
    
    parameters['MISC']['server_time_buffer'] = 600          # time buffer for server
    parameters['MISC']['partition'] = 'optimum'             # setting for server
    parameters['MISC']['preamble_args'] = ["module load python/3.12.0", "source venev/bin/activate"] # preamble args for sh file
    
    return parameters
    
    
def prebuilt_a02_prepare_sh_original(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.prepare_a02_sh_original.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    
    # OTHER PARAMETERS
    parameters['MISC'] = {}
    parameters['MISC']['directory_npp'] = './data/generated/problems/paper/original'
    parameters['MISC']['directory_sh'] = './src/sh'
    parameters['MISC']['time_limit'] = 200
    parameters['MISC']['lenght_batch'] = 10 # must divide the number of problem in directory_npp
    parameters['MISC']['server_time_buffer'] = 600
    parameters['MISC']['preamble_args'] = ["module load julia", "module load gurobi"]
    parameters['MISC']['partition'] = 'optimum'
    
    return parameters
    
def prebuilt_a03_time_config(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.a03_time_config.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    
    # OTHER PARAMETERS
    parameters['MISC'] = {}
    parameters['MISC']['directory_npp'] = './data/generated/problems/paper/original'
    parameters['MISC']['time_filename'] = 'time_config.pkl'
  
    return parameters
    
    


def prebuilt_a04_prepare_sh_julia(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.a04_prepare_sh_julia.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    
    # OTHER PARAMETERS
    parameters['MISC'] = {}
    
    parameters['MISC']['file_time_config'] = './result/time_config_g_200.pkl'               # input timetable used to impose time constraints
    parameters['MISC']['directory_npp'] = './data/generated/problems/paper/'                # input folder where transformed problems can be found
    parameters['MISC']['directory_original'] = './data/generated/problems/paper/original'   # input folder where original problems can be found
    parameters['MISC']['directory_sh'] = './src/sh/'                                        # output folder for generated sh files
    parameters['MISC']['grouped'] = True                                                    # for batching commands (should not be changed unless for good reason)
    
    parameters['MISC']['prepare_sh_file'] = {}
    parameters['MISC']['prepare_sh_file']['n_exp'] = 6                 # number of experiences (strategy number see ./src/julia/script.jl) 
    parameters['MISC']['prepare_sh_file']['n_eval'] = 1                # number of evaluations (should not be changed unless for good reason)
    parameters['MISC']['prepare_sh_file']['eval_time'] = 30            # evaluation time (in seconds)
    parameters['MISC']['prepare_sh_file']['min_time'] = 10*3600        # minimum time (in seconds)
    parameters['MISC']['prepare_sh_file']['max_time'] = 24*3600 - 600  # maximum time (in seconds)
    parameters['MISC']['prepare_sh_file']['server_time_buffer'] = 600  # time buffer for server
    parameters['MISC']['prepare_sh_file']['julia_compute_option'] = 5  # option number (strategy number see ./src/julia/script.jl) 
    parameters['MISC']['prepare_sh_file']['preamble_args'] = ["module load julia", "module load gurobi"]   # preamble args for sh file
    
    return parameters
    
    
def prebuilt_a05_post_processing_result(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.a05_post_processing_result.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.WARNING
    parameters['logger']['stream_handler_level'] = logging.ERROR
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    
    
    # OTHER PARAMETERS
    parameters['MISC'] = {}
    parameters['MISC']['directory_npp'] = './data/generated/problems/paper/'                # input folder where transformed problems can be found
    parameters['MISC']['directory_original'] = './data/generated/problems/paper/original'   # input folder where original problems can be found
    parameters['MISC']['directory_output'] = '/scratch/hebjul'                              # output folder for data
    parameters['MISC']['directory_sh'] = './src/sh'                                         # output for sh generated file
    parameters['MISC']['output_name_prefix'] = 'result'                                     # prefix for file naming
    
    parameters['MISC']['batch_size'] = 1                                                    # number of processing in the batch
    parameters['MISC']['server_time_buffer'] = 5                                            # time buffer for server
    parameters['MISC']['partition'] = 'testing'                                             # setting for server
    parameters['MISC']['preamble_args'] = ["module load python/3.12.0", "source venev/bin/activate"]    # preamble args for sh file
    
    return parameters
