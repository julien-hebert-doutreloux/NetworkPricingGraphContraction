from preamble.preamble import *

PARAMETERS = config.prebuilt_a04_prepare_sh_task(__name__)
logger = config.log(**PARAMETERS['logger'])

def prepare_sh_file(directory_npp, directory_original, grouped, directory_sh, time_limit, index):
    # original directory as a subfolder of directory_npp
    # n experience 8
    n_exp = 8
    min_time = 3600
    max_time = 5*3600
    server_time_buffer = 601
    
    args = ["module load julia", "module load gurobi"]
    
    command_time_list_tuple_sh = []
    for root, dirs, files in os.walk(directory_npp):
        problem_name = directory_npp.split(os.sep)[-1]
        
        for filename in files:
            if filename.endswith("P.pkl"):
            
                base_name, ext = os.path.splitext(filename)
                _, _, n_problems, *_ = base_name.split('-')
                n_problems = int(n_problems)                 # number of problem in the *P.pkl file
                
                if n_problems>0:
                                       
                    ## Command arguments
                    input_file = os.path.join(root, filename)
                    output_file = os.path.join(directory_npp, filename.replace(f'P{ext}', 'R.json'))
                    original_file = os.path.join(directory_original, f'000000-000000-{problem_name}-P.json')
                    transformation_file = os.path.join(root, filename.replace(f"-P{ext}", "-T.pkl"))
                    
                    command = f'julia src/julia/script.jl {input_file} {output_file} {time_limit} {original_file} {transformation_file}'
                    estimated_time = n_problems*time_limit*n_exp + server_time_buffer
                    
                    if not grouped:
                        # *.sh config for server
                        h, m, s = '%02d' % (estimated_time // 3600), '%02d' % ((estimated_time % 3600) // 60), '00'
                        cpu, ram = 1, 10
                        
                        file_sh = os.path.join(directory_sh, f"{filename.replace(f'-P{ext}', '.sh')}")
                                            
                        with open(file_sh, 'w') as f:
                            f.write('\n'.join(preamble_sh(cpu, ram, h, m, s, *args) + [command,] + [f'sleep {server_time_buffer}', ] ))
                            logger.info(f'File created : {file_sh}')
                            
                        command_time_list_tuple_sh.append((f'sbatch {file_sh}', estimated_time))
                        
                    else:
                        
                        command_time_list_tuple_sh.append((command, estimated_time))
                    
    stack_time = 0
    stack_command = []
    j = 0
    for i, (command, time_) in enumerate(command_time_list_tuple_sh, start=1):
        
        time_ = round(time_,0)
        if stack_time <= max_time:
            stack_time+=time_
            stack_command.append(command)
            
        if i==len(command_time_list_tuple_sh) or stack_time > max_time:
            j+=1
            file_sh = os.path.join(directory_sh, f"laucher_{'%04d'%index}_{'%04d'%j}.sh")
            stack_time = max(min_time, stack_time) if grouped else server_time_buffer
            stack_time + server_time_buffer
            h, m, s = '%02d' % (stack_time // 3600), '%02d' % ((stack_time % 3600) // 60), '00'
            cpu, ram = 1, (grouped*9+1)
            if len(stack_command)>0:
                with open(file_sh, 'w') as f:
                    f.write('\n'.join(preamble_sh(cpu, ram, h, m, s, *args) + stack_command+[f'sleep {server_time_buffer}', ] ))
                    logger.info(f'File created : {file_sh}')
                
                stack_time = 0
                stack_command = []
    






def main():

    #file_time_config = './result/time_limit_config.pkl'
    file_time_config = './result/config_file_1000.pkl'
    directory_npp = './data/generated/problems/paper/'
    directory_original = './data/generated/problems/paper/original'
    directory_sh = './src/sh/'
    grouped = True
    
    with open(file_time_config,'rb') as f:
        config = pickle.load(f)
        
    i = 1
    for pb_name, (time_limit, finish) in tqdm(config.items(), desc='Creating SH script'):
        if time_limit <= 500 and 'g' in pb_name:
            print(pb_name)
            time_limit = min(200, time_limit)
            directory_pb = os.path.join(directory_npp, pb_name)
            prepare_sh_file(directory_pb, directory_original, grouped, directory_sh, time_limit, i)
            i+=1
                
