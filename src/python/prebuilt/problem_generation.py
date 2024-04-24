from preamble.preamble import *
from test.problem_maker import problem_maker

PARAMETERS = config.prebuilt_problem_generation(__name__)
logger = config.log(**PARAMETERS['logger'])


preamble = lambda cpu, ram, h, m, s : [
    "#!/bin/bash",
    f"#SBATCH --cpus-per-task={cpu}",
    f"#SBATCH --mem={ram}G",
    f"#SBATCH --time={h}:{m}:{s}",
    "#SBATCH --output=/dev/null",
    "#SBATCH --partition=optimum",
    "module load python/3.12.0",
    "source venev/bin/activate"
]
def main():
    n, min_sl, max_sl, m,\
    H1, H2, H3, H4,\
    max_attemp, batch_size,\
    directory_input, directory_output, directory_original, directory_sh = PARAMETERS['MISC'].values() 
    command_list = []
    pb_list = []
    for root, dirs, files in os.walk(directory_input):
        for filename in files:
            if filename.endswith(".json"):
                
                file_npp = os.path.join(root, filename)
                base_name, ext = os.path.splitext(filename)
                subdirectory = root.replace(directory_input, '').split(os.sep)
                directory_ = os.path.join(directory_output, *subdirectory, base_name)
                
                if not os.path.exists(directory_):
                    #os.makedirs(directory_)
                    #logger.info(f"directory created : {directory_}")
                    
                    command_list.append(f'mkdir {directory_}')
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
                            content = '\n'.join(preamble(1, 1, '00', '30', '00')+command_list+['sleep 600',])
                            #content = '\n'.join(command_list)
                            file_sh = os.path.join(directory_sh, f'generation_{"_".join(pb_list)}.sh')
                                
                            with open(file_sh, 'w') as f:
                                f.write(content)
                                logger.info(f'File created : {file_sh}')
                            command_list = []
                            pb_list = []
    
    
    
    
    
    if command_list!=[]:
        content = '\n'.join(preamble(1, 1, '00', '25', '00')+command_list+['sleep 600',])
        file_sh = os.path.join(directory_sh, f'generation_{"_".join(pb_list)}.sh')
            
        with open(file_sh, 'w') as f:
            f.write(content)
            logger.info(f'File created : {file_sh}')
        command_list = []
