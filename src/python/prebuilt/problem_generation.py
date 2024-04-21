from preamble.preamble import *
from test.problem_maker import problem_maker

PARAMETERS = config.prebuilt_problem_generation(__name__)
logger = config.log(**PARAMETERS['logger'])



def main():
    n, min_sl, max_sl, m,\
    H1, H2, H3, H4,\
    max_attemp, batch_size,\
    directory_input, directory_output, directory_original = PARAMETERS['MISC'].values()
    for root, dirs, files in os.walk(directory_input):
        for filename in files:
            if filename.endswith(".json"):
                
                file_npp = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subdirectory = root.replace(directory_input, '').split(os.sep)
                
                directory_ = os.path.join(directory_output, *subdirectory, base_name)
                if not os.path.exists(directory_):
                    os.makedirs(directory_)
                    logger.info(f"directory created : {directory_}")
                    problem_maker(
                                    file_npp, directory_, directory_original,
                                    n, min_sl, max_sl, m,
                                    H1, H2, H3, H4,
                                    max_attemp, batch_size
                                )
    
