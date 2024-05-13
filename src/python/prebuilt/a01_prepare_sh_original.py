from preamble.preamble import *

PARAMETERS = config.prebuilt_a01_prepare_sh_original(__name__)
logger = config.log(**PARAMETERS['logger'])


def main():
    # Sh prepare for original problem batch of 25
    #############################################
    directory_npp = PARAMETERS['MISC']['directory_npp']
    directory_sh  = PARAMETERS['MISC']['directory_sh'] 
    
    time_limit_jl = parameters['MISC']['time_limit']
    len_group = parameters['MISC']['lenght_batch'] 
    args = ["module load julia", "module load gurobi"]

    command_list = []

    for root, dirs, files in os.walk(directory_npp):
        for filename in files:
            if filename.endswith("P.json"):

                input_file = os.path.join(root, filename)
                output_file = os.path.join(directory_npp, filename.replace('P.json', 'R.json'))
                
                command = f'julia src/julia/script.jl {input_file} {output_file} {time_limit_jl}'
                command_list.append(command)


    time_limit_sh = len_group * time_limit_jl + 850
    h, m, s = '%02d' % (time_limit_sh // 3600), '%02d' % ((time_limit_sh % 3600) // 60), '00'
    cpu, ram = 1, 10
    split_list = [command_list[i:i+len_group] for i in range(0, len(command_list), len_group)]

    for i, commands in enumerate(split_list, start=1):
        n = '%02d' % i
        sh_file = os.path.join(directory_sh, f'original_batch_{n}.sh')
        
        with open(sh_file, 'w') as f:
            commands = preamble_sh(cpu, ram, h, m, s, *args) + commands + ['sleep 750',]
            code = '\n'.join(commands)
            f.write(code)
            logger.info(f'File created : {file_sh}')

