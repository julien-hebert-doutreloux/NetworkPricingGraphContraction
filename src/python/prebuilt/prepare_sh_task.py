from preamble.preamble import *

PARAMETERS = config.prebuilt_prepare_sh_task(__name__)
logger = config.log(**PARAMETERS['logger'])

def prepare_sh_file(directory_npp, grouped, directory_sh, time_limit):

    preamble = lambda cpu, ram, h, m, s : [
        "#!/bin/bash",
        f"#SBATCH --cpus-per-task={cpu}",
        f"#SBATCH --mem={ram}G",
        f"#SBATCH --time={h}:{m}:{s}",
        "#SBATCH --output=/dev/null",
        "#SBATCH --partition=optimum",
        "module load julia",
        "module load gurobi",
    ]
        
        
    for root, dirs, files in os.walk(directory_npp):
        command_list_sh = []
        time_limit_sh = 0
        problem_name = directory_npp.split(os.sep)[-1]
        for filename in files:
            if filename.endswith("P.pkl"):
                base_name, ext = os.path.splitext(filename)
                _, _,n_problems, *_ = base_name.split('-')
            
                n_problems = int(n_problems)                 # number of problem in the *P.pkl file
                
                if n_problems>0:
                    time_limit_sh += n_problems*time_limit + 500 # time limit for the *.sh script (config for server)
                    time_limit_jl = time_limit                   # time limit for the julia command (limit applied individually for each problem)
                
                    # *.sh config for server
                    h, m, s = '%02d' % (time_limit_sh // 3600), '%02d' % ((time_limit_sh % 3600) // 60), '00'
                    cpu, ram = 1, 6
                
                
                    input_file = os.path.join(root, filename)
                    output_file = os.path.join(directory_npp, filename.replace(f'P{ext}', 'R.json'))
                    
                    command = f'julia src/julia/script.jl {input_file} {output_file} {time_limit}'
                
                    if not grouped:
                        file_sh = os.path.join(directory_sh, f"{filename.replace(f'-P{ext}', '.sh')}")
                                            
                        with open(file_sh, 'w') as f:
                            f.write('\n'.join( preamble(cpu, ram, h, m, s)+[command,]+['sleep 600', ] ))
                        
                        command_list_sh.append(f'sbatch {file_sh}')
                        time_limit_sh = 0
                        
                    else:
                        
                        command_list_sh.append(command)
                    
            
            
        time_limit_sh += 3600   
        file_sh = os.path.join(directory_sh, f"laucher_{problem_name}.sh")
        
        h, m, s = '%02d' % (time_limit_sh // 3600), '%02d' % ((time_limit_sh % 3600) // 60), '00'
        cpu, ram = 1, (grouped*5+1)
        with open(file_sh, 'w') as f:
            f.write('\n'.join( preamble(cpu, ram, h, m, s)+command_list_sh+['sleep 600', ] ))





def main():
    file_time_config = './result/time_limit_config.pkl'
    directory_npp = './data/generated/problems/paper/'
    directory_sh = './src/sh/'
    grouped = False
    
    with open(file_time_config,'rb') as f:
        config = pickle.load(f)

    for pb_name, time_limit in tqdm(config.items(), desc='Creating SH script'):
        directory_pb = os.path.join(directory_npp, pb_name)
        prepare_sh_file(directory_pb, grouped, directory_sh, time_limit)

                
