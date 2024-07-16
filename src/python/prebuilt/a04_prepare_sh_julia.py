from preamble.preamble import *

PARAMETERS = config.prebuilt_a04_prepare_sh_julia(__name__)
logger = config.log(**PARAMETERS['logger'])

def prepare_sh_file(directory_npp, directory_original, grouped, directory_sh, time_limit):
    
    n_exp = 6
    n_eval = 1
    eval_time = 30
    min_time = 10*3600
    max_time = 24*3600 - 600
    server_time_buffer = 600
    args = ["module load julia", "module load gurobi"]
    julia_compute_option = 5#16 juil
    command_time_list_tuple_sh = []
    
    
    # Iterate through files in the directory_npp and process *P.pkl files
    for root, dirs, files in os.walk(directory_npp):
        problem_name = directory_npp.split(os.sep)[-1]
        
        # Walk through the directory and process each *P.pkl file.
        for filename in files:
            if filename.endswith("P.pkl"):
            
                # Extract problem name and number of problems from the file name.
                base_name, ext = os.path.splitext(filename)
                _, _, n_problems, *_ = base_name.split('-')
                n_problems = int(n_problems)                 # number of problem in the *P.pkl file
                
                # If the number of problems is greater than 0, prepare command arguments and estimate the time required for execution.
                if n_problems>0:
                                       
                    ## Command arguments
                    input_file = os.path.join(root, filename)
                    output_file = os.path.join(directory_npp, filename.replace(f'P{ext}', 'R.json'))
                    original_file = os.path.join(directory_original, f'000000-000000-{problem_name}-P.json')
                    transformation_file = os.path.join(root, filename.replace(f"-P{ext}", "-T.pkl"))
                    
                    command = f'julia src/julia/script.jl {input_file} {output_file} {time_limit} {julia_compute_option} {original_file} {transformation_file}'
                    
                    estimated_time = n_problems*((time_limit+10)*n_exp + n_eval*eval_time) + server_time_buffer
                    
                    # If not grouped, create a .sh file for each command with the estimated time and append the command and estimated time to the list.
                    if not grouped:

                        
                        file_sh = os.path.join(directory_sh, f"{filename.replace(f'-P{ext}', '.sh')}")
                        with open(file_sh, 'w') as f:
                        
                            # Preamble arguments
                            h, m, s = '%02d' % (estimated_time // 3600), '%02d' % ((estimated_time % 3600) // 60), '00'
                            cpu, ram = 1, 10
                            partition = 'optimumlong' if int(h) >= 48 else 'optimum'
                            
                            # Writing to file
                            f.write('\n'.join(preamble_sh(cpu, ram, h, m, s, partition, *args) + [command,] + [f'sleep {server_time_buffer}', ] ))
                            logger.info(f'File created : {file_sh}')
                            
                        command_time_list_tuple_sh.append((f'sbatch {file_sh}', estimated_time))
                        
                    # If grouped, append the command and estimated time to the list without creating a .sh file.
                    else:
                        command_time_list_tuple_sh.append((command, estimated_time))
                    
    stack_time = 0
    stack_command = []
    j = 0
    
    # Iterate through the command and time tuples, adding commands to the stack_command list and updating stack_time.
    for i, (command, time_) in enumerate(command_time_list_tuple_sh, start=1):
        
        
        time_ = int(round(time_, 0))
        
        if stack_time <= max_time:
            stack_time+=time_
            stack_command.append(command)
        
        # If the stack_time exceeds the max_time, create a new .sh file with the stacked commands and reset the stack_time and stack_command variables.
        # If the current tuple is the last one, create a new .sh file with the remaining stacked commands.
        if i==len(command_time_list_tuple_sh) or stack_time > max_time:
            j+=1
            
            file_sh = os.path.join(directory_sh, f"launcher_{problem_name}_{'%04d'%j}.sh")
            stack_time = max(min_time, stack_time) if grouped else server_time_buffer
            stack_time += server_time_buffer
            stack_time = min(int(round(2.5*max_time,0)), stack_time)
            
            # Preamble arguments
            h, m, s = '%02d' % (stack_time // 3600), '%02d' % ((stack_time % 3600) // 60), '00'
            cpu, ram = 1, (grouped*9+1)
            partition = 'optimumlong' if int(h) >= 48 else 'optimum'
            
            
            if len(stack_command)>0:
                with open(file_sh, 'w') as f:
                    # Writing to file
                    f.write('\n'.join(preamble_sh(cpu, ram, h, m, s, partition, *args) + stack_command+[f'sleep {server_time_buffer}', ] ))
                    logger.info(f'File created : {file_sh}')
                
                # Reset for new file 
                stack_time = 0
                stack_command = []
    


def main():

    #file_time_config = './result/time_limit_config.pkl'
    file_time_config = './result/time_config_g_200.pkl' #'./result/config_file_1000.pkl'
    directory_npp = './data/generated/problems/paper/'
    directory_original = './data/generated/problems/paper/original'
    directory_sh = './src/sh/'
    grouped = True
    
    with open(file_time_config,'rb') as f:
        config = pickle.load(f)
        
    for pb_name, (time_limit, finish) in tqdm(config.items(), desc='Creating SH script'):
        if 'g' in pb_name:
            time_limit = min(200, int(round(time_limit,0)))
            print(pb_name, time_limit)
            directory_pb = os.path.join(directory_npp, pb_name)
            prepare_sh_file(directory_pb, directory_original, grouped, directory_sh, time_limit)
                
