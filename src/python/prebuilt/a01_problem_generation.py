from preamble.preamble import *

PARAMETERS = config.prebuilt_a01_problem_generation(__name__)
logger = config.log(**PARAMETERS['logger'])

def main():
    n, min_sl, max_sl, m,\
    H1, H2, H3, H4,\
    max_attemp, batch_size,\
    directory_input, directory_output, directory_original, directory_sh,\
    server_time_buffer, partition, args= PARAMETERS['MISC'].values()
    
    command_list, mkdir_list = [], []
    
    
    k = 1
    # Iterate through the input directory using os.walk() and process each JSON file containing 'g' in its name
    for root, dirs, files in os.walk(directory_input):
        for i, filename in enumerate(files, start=1):
            if filename.endswith(".json") and 'g' in filename:
            
                # Construct the output directory path based on the input directory and the base name of the current file
                file_npp = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subdirectory = root.replace(directory_input, '').split(os.sep)
                directory_ = os.path.join(directory_output, *subdirectory, base_name)
                
                # If the output directory does not exist, add a command to create it to the mkdir_list
                if not os.path.exists(directory_):
                    logger.info(f"directory created : {directory_}")
                    mkdir_list.append(f'mkdir {directory_}')
                    
                    # Iterate through the parameter values and prepare the command arguments and keyword arguments for each combination of parameters
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
                        
                        # Append the new formatted command with its arguments to the command_list
                        str_v = lambda x: f"'{x}'" if type(x)==str else x
                        str_kwargs = ' '.join([f"--{k} {str_v(v)}" for k, v in kwargs.items()])
                        command_list.append(f"python src/python/main.py option5 5-1 {str_kwargs}")
                        
                        # If the number of commands in the command_list reaches the batch_size, write the commands to a .sh file and clear the command_list.
                        if len(command_list)%batch_size == 0 and command_list != []:
                            content = '\n'.join(preamble_sh(1, 1, '00', '20', '00', partition, *args) + command_list + [f'sleep {server_time_buffer}',])
                            numberk = '%04d' % k
                            numberi = '%04d' % i
                            k+=1
                            file_sh = os.path.join(directory_sh, f'generation_{numberi}-{numberk}.sh')
                                
                            with open(file_sh, 'w') as f:
                                # Writing file
                                f.write(content)
                                logger.info(f'File created : {file_sh}')
                             
                             # Reset 
                            command_list = []
    # After processing all files, write any remaining commands in the command_list to a .sh file.
    if command_list != []:
        numberk = '%04d' % (k+1)
        numberi = '%04d' % (i+1)
        content = '\n'.join(preamble_sh(1, 5, '00', '15', '00', partition, *args) + command_list + [f'sleep {server_time_buffer}',])
        file_sh = os.path.join(directory_sh, f'generation_{numberi}-{numberk}.sh')
            
        with open(file_sh, 'w') as f:
            # Writing file
            f.write(content)
            logger.info(f'File created : {file_sh}')
        
        # Reset
        command_list = []
        
    with open(os.path.join(directory_sh, '0000_mkdir_prepare.sh'), 'w') as f:
        # Writing file
        content = '\n'.join(preamble_sh(1, 1, '00', '20', '00', partition) + mkdir_list + [f'sleep {server_time_buffer}',])
        f.write(content)
