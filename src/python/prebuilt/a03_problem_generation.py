from preamble.preamble import *

PARAMETERS = config.prebuilt_a03_problem_generation(__name__)
logger = config.log(**PARAMETERS['logger'])

def main():
    n, min_sl, max_sl, m,\
    H1, H2, H3, H4,\
    max_attemp, batch_size,\
    directory_input, directory_output, directory_original, directory_sh = PARAMETERS['MISC'].values()
    args = ["module load python/3.12.0", "source venev/bin/activate"]
    command_list, pb_list, mkdir_list = [], [], []
    
    k = 1
    for root, dirs, files in os.walk(directory_input):
        for filename in files:
            if filename.endswith(".json"):
                file_npp = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subdirectory = root.replace(directory_input, '').split(os.sep)
                directory_ = os.path.join(directory_output, *subdirectory, base_name)
                
                if not os.path.exists(directory_):
                    logger.info(f"directory created : {directory_}")
                    mkdir_list.append(f'mkdir {directory_}')
                    
                    pb_list.append(base_name)
                    for arg in zip(n, min_sl, max_sl, m, H1, H2, H3, H4, max_attemp):
                        kwargs = {
                            'file_npp':file_npp,
                            'directory_npp':directory_,
                            'directory_original':directory_original,
                            'n':arg[0],
                            'min_sl':arg[1],
                            'max_sl':arg[2],
                            'm':arg[3],
                            'H1':arg[4],
                            'H2':arg[5],
                            'H3':arg[6],
                            'H4':arg[7],
                            'max_attemp':arg[8],
                            'batch_size':batch_size, 
                        }
                        
                        str_v = lambda x: f"'{x}'" if type(x)==str else x
                        str_kwargs = ' '.join([f"--{k} {str_v(v)}" for k, v in kwargs.items()])
                        command_list.append(f"python src/python/main.py option5 5-1 {str_kwargs}")
                        
                        if len(command_list)%batch_size==0 and command_list!=[]:
                            content = '\n'.join(preamble_sh(1, 1, '00', '30', '00', *args) + command_list + ['sleep 600',])
                            number = '%04d' % k
                            k+=1
                            file_sh = os.path.join(directory_sh, f'generation_{number}_{"_".join(pb_list)}.sh')
                                
                            with open(file_sh, 'w') as f:
                                f.write(content)
                                logger.info(f'File created : {file_sh}')
                                
                            command_list = []
                            pb_list = []
    
        
    
    if command_list!=[]:
        content = '\n'.join(preamble_sh(1, 5, '00', '30', '00', *args) + command_list + ['sleep 600',])
        file_sh = os.path.join(directory_sh, f'generation_{"_".join(pb_list)}.sh')
            
        with open(file_sh, 'w') as f:
            f.write(content)
            logger.info(f'File created : {file_sh}')
        command_list = []
        
    with open(os.path.join(directory_sh, '0000_mkdir_prepare.sh'), 'w') as f:
        content = '\n'.join(preamble_sh(1, 1, '00', '10', '30') + mkdir_list + ['sleep 600',])
        f.write(content)
