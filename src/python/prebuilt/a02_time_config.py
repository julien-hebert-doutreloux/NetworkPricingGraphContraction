from preamble.preamble import *

PARAMETERS = config.prebuilt_a02_time_config(__name__)
logger = config.log(**PARAMETERS['logger'])


def main():
    ## Gather time needed to solve original problem in a dictionary of the form dict[pb_name] = (time:float, finish:bool)
    ## Will be use to set up the time limit for every transformation
    directory_npp, time_filename = PARAMETERS['MISC'].values()
    config = {}
    for root, dirs, files in os.walk(directory_npp):
        
        for filename in files:
            if filename.endswith("R.json"):
                
                base_name, ext = os.path.splitext(filename)
                _, _, *problem_name, _ = base_name.split('-')
                problem_name = '-'.join(problem_name)
                
                
                with open(os.path.join(root, filename), 'r') as f:
                    result = json.load(f)

                config[problem_name] = (result['solve_time'], result['finish'])
                
    with open(time_filename, 'wb') as f:
        pickle.dump(config, f)
        logger.info(f'File created : {time_filename}')
