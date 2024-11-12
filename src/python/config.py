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

def prebuilt_a01_prepare_sh_original(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.prepare_a01_sh_original.log')
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
    
def prebuilt_a02_time_config(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.a02_time_config.log')
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
    
    
def prebuilt_a03_problem_generation(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'prebuilt.a03_problem_generation.log')
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

    parameters['MISC']['n'] = n
    parameters['MISC']['min_sl'] = min_sl
    parameters['MISC']['max_sl'] = max_sl
    parameters['MISC']['m'] = m
    parameters['MISC']['H1'] = H1
    parameters['MISC']['H2'] = H2 
    parameters['MISC']['H3'] = H3
    parameters['MISC']['H4'] = H4
    parameters['MISC']['max_attemp'] = max_attemp
    parameters['MISC']['batch_size'] = batch_size
    parameters['MISC']['directory_input'] = './data/from_github/problems/paper'
    parameters['MISC']['directory_output'] = './data/generated/problems/paper'
    parameters['MISC']['directory_original'] = './data/generated/problems/paper/original'
    parameters['MISC']['directory_sh'] = './src/sh'
    parameters['MISC']['server_time_buffer'] = 600
    parameters['MISC']['partition'] = 'optimum'
    parameters['MISC']['preamble_args'] = ["module load python/3.12.0", "source venev/bin/activate"]
    
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
    
    
    parameters['MISC'] = {}
    parameters['MISC']['directory_npp'] = './data/generated/problems/paper/'
    parameters['MISC']['directory_original'] = os.path.join(parameters['MISC']['directory_npp'], 'original')
    parameters['MISC']['directory_output'] = './scratch/hebjul'
    parameters['MISC']['output_name_prefix'] = 'result'
    
    parameters['MISC']['batch_size'] = 3
    parameters['MISC']['directory_sh'] = './src/sh'
    parameters['MISC']['server_time_buffer'] = 600
    parameters['MISC']['preamble_args'] = ["module load python/3.12.0", "source venev/bin/activate"]
    parameters['MISC']['partition'] = 'optimum'
    
    
    
    # OTHER PARAMETERS
    return parameters
    
    
    
###################################
# plot
