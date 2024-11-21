import os
import json
import subprocess
from preamble.preamble import *

PARAMETERS = config.prebuilt_a00_prepare_max_clique_script_sh(__name__)
logger = config.log(**PARAMETERS['logger'])

def find_json_files(directory):
    json_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.json'):
                json_files.append(os.path.join(root, file))
    return json_files


def chunk_list_to_tuples(flat_list, chunk_size):
    return [tuple(flat_list[i:i + chunk_size]) for i in range(0, len(flat_list), chunk_size)]


def main():
    directory_problem, export_path, directory_sh, \
    cpu ,ram, h, m, s,\
    n_try, batch_size,\
    server_time_buffer, partition, preamble_args = PARAMETERS['MISC'].values()

    json_files = find_json_files(directory_problem)

    for paths in chunk_list_to_tuples(json_files, batch_size):
        
        command = lambda path : f"python ./src/python/main.py option2 --input_file '{path}' --iteration $i --export_path '{export_path}'"
        commands = '\n\t'.join([command(path) for path in paths])
        body = f"""for i in $(seq 1 {n_try}); do
    {commands}
done
"""
    
        commands = preamble_sh(cpu, ram, h, m, s, partition, *preamble_args) + [body, ] + [f'sleep {server_time_buffer}',]
        code = '\n'.join(commands)
        
        
        names = [os.path.splitext(os.path.basename(path))[0] for path in paths]
        name = '_'.join(names)
        with open(os.path.join(directory_sh, f"max_clique_{name}.sh"), 'w') as f:
            f.write(code)
