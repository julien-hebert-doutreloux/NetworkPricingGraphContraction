from preamble.preamble import *

PARAMETERS = config.prebuilt_prepare_sh_task(__name__)
logger = config.log(**PARAMETERS['logger'])



def main():
    directory_npp = './data/generated/problems/paper/d30-07'
    directory_sh = './src/sh/'
    
    independant = True
    h, m, s = '15', '00', '00'
    cpu, ram = 1, 5
    time_limit = 500
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
        
    sh_command_list = []
    for root, dirs, files in os.walk(directory_npp):
        for filename in files:
            if filename.endswith("P.json") or filename.endswith("P.pkl"):
                _, ext = os.path.splitext(filename)
                
                input_file = os.path.join(root, filename)
                output_file = os.path.join(directory_npp, filename.replace(f'P{ext}', 'R.json'))
                
                command = f'julia src/julia/script.jl {input_file} {output_file} {time_limit}'
                
                if independant:
                    sh_file = os.path.join(directory_sh, filename.replace(f'P{ext}', 'R.json'))
                    with open(sh_file, 'w') as f:
                        f.write('\n'.join(preamble(cpu, ram, h, m, s)))
                        f.write('\n'+command)
                        f.write('\nsleep 60')
                        
                    sh_command_list.append(f'sbatch {sh_file}')
                else:   
                    sh_command_list.append(command)
                    
    
    sh_command_list.append('sleep 60')
    sh_file = os.path.join(directory_sh, f"{directory_npp.split(os.sep)[-1]}.sh")
    
    h, m, s = '00', '05', '00'
    cpu, ram = 1, 1
    with open(sh_file, 'w') as f:
        f.write('\n'.join(preamble(cpu, ram, h, m, s)))
        f.write('\n')
        f.write('\n'.join(sh_command_list))
