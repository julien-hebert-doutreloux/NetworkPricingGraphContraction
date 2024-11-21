from preamble.preamble import *
from gamma.common import npp_from_json
from testing.result_processing import post_process_result

PARAMETERS = config.prebuilt_a05_post_processing_result(__name__)
logger = config.log(**PARAMETERS['logger'])

def main():
    directory_npp, directory_original, directory_output, directory_sh,\
    output_name_prefix, batch_size, server_time_buffer, partition, args = PARAMETERS['MISC'].values()
    command_list = []
    
    # original
    directory_input = directory_original
    output_name = output_name_prefix+'_original'
    command = f'python ./src/python/main.py option5 5-2 --directory_input {directory_input} --directory_output {directory_output} --output_name {output_name}'
    command_list.append(command)
    
    # other
    directories = [d for d in os.listdir(directory_npp) if os.path.isdir(os.path.join(directory_npp, d))]
    directories.remove('original')
    for d in directories:
        directory_input = os.path.join(directory_npp, d)
        output_name = output_name_prefix + f'_{d}'
        command = f'python ./src/python/main.py option5 5-3 --directory_input {directory_input} --directory_output {directory_output} --directory_original {directory_original} --output_name {output_name}'
        command_list.append(command)
        
    sub_command = []
    j = 1
    for i, command in enumerate(command_list, start=0):

        sub_command.append(command)

        if ((i%(batch_size) == 0) and (i!=0)) or (i == len(command_list)) or batch_size==1:
            
            estimated_time = 20*60*len(sub_command) + server_time_buffer
            h, m, s = '%02d' % (estimated_time // 3600), '%02d' % ((estimated_time % 3600) // 60), '00'
            cpu, ram = 1, 3
            
            file_sh = os.path.join(directory_sh, f'post_process_{"%04d" % j}.sh')
            with open(file_sh, 'w') as f:
                f.write('\n'.join(preamble_sh(cpu, ram, h, m, s, partition, *args) + sub_command + [f'sleep {server_time_buffer}', ] ))
                logger.info(f'File created : {file_sh}')
            sub_command = []
            j+=1

