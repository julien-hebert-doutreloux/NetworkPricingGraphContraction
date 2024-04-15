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
    parameters['logger']['stream_handler_level'] = logging.WARNING
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
    parameters['logger']['logger_level'] = logging.DEBUG
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
    parameters['logger']['logger_level'] = logging.DEBUG
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
    parameters['logger']['logger_level'] = logging.DEBUG
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
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.WARNING
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
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.WARNING
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
    parameters['logger']['logger_level'] = logging.DEBUG
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
    parameters['logger']['stream_handler_level'] = logging.WARNING
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
    parameters['logger']['logger_level'] = logging.DEBUG
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
    parameters['logger']['logger_level'] = logging.WARNING
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
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.WARNING
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
    parameters['logger']['logger_level'] = logging.DEBUG
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
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.WARNING
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    
    parameters['probleme_generation_combinaison'] = [
                        # num_partitions, min_sub_length, max_sub_length, number_not_trivial_class, H4, batch_size
                        (1000, 2, 2, 1, False, 1000),
                        (1000, 2, 2, 2, False, 1000),
                        (1000, 2, 2, 3, False, 1000),
                        (1000, 2, 2, 4, False, 1000),
                        (1000, 2, 2, 5, False, 1000),
                        (1000, 3, 3, 1, False, 1000),
                        (1000, 3, 3, 2, False, 1000),
                        (1000, 4, 4, 1, False, 1000),
                        (1000, 5, 5, 1, False, 1000),
                        (1000, 2, 5, 5, False, 1000),
                        (1000, 2, 2, 1, True, 1000),
                        (1000, 2, 2, 2, True, 1000),
                        (1000, 2, 2, 3, True, 1000),
                        (1000, 2, 2, 4, True, 1000),
                        (1000, 2, 2, 5, True, 1000),
                        (1000, 3, 3, 1, True, 1000),
                        (1000, 3, 3, 2, True, 1000),
                        (1000, 4, 4, 1, True, 1000),
                        (1000, 5, 5, 1, True, 1000),
                        (1000, 2, 5, 5, True, 1000),
                    ]
    return parameters

# test.problem_maker.py
def test_problem_maker(name):
    parameters = {}

    # LOGGER PARAMETERS
    parameters['logger'] = {}
    parameters['logger']['filename'] = os.path.join('.', 'log', 'test.problem_maker.log')
    parameters['logger']['logger_name'] = name
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.WARNING
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
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['stream_handler_level'] = logging.WARNING
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
    parameters['logger']['logger_level'] = logging.DEBUG
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
    parameters['logger']['logger_level'] = logging.DEBUG
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
    parameters['logger']['logger_level'] = logging.DEBUG
    parameters['logger']['file_handle_level'] = logging.WARNING
    parameters['formatter'] = logging.Formatter('%(asctime)s:%(name)s:%(message)s')
    # OTHER PARAMETERS
    return parameters
    
    
###################################
# plot
