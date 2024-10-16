import os
import json
import subprocess

def find_json_files(directory):
    json_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.json'):
                json_files.append(os.path.join(root, file))
    return json_files


def chunk_list_to_tuples(flat_list, chunk_size):
    return [tuple(flat_list[i:i + chunk_size]) for i in range(0, len(flat_list), chunk_size)]


directory = './data/from_github/problems/'
export_path = './result/max_clique/'

json_files = find_json_files(directory)

for paths in chunk_list_to_tuples(json_files, 3):
    
    command = lambda path : f"python ./src/python/main.py option2 --input_file '{path}' --iteration $i --export_path '{export_path}'"
    commands = '\n'.join([command(path) for path in paths])
    content = f"""#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G
#SBATCH --time=01:30:00
#SBATCH --output=null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
for ((i=1; i<=240; i++)); do
    {commands}
done
sleep 60
    """
    names = [os.path.splitext(os.path.basename(path))[0] for path in paths]
    name = '_'.join(names)
    with open(os.path.join('./src/sh/', f"max_clique_{name}.sh"), 'w') as f:
        f.write(content)
    

    
    
    
    #shell_command = f"seq 100 python ./src/python/main.py option2 --input_file '{path}'" + " " + "--option '1' --iteration {}" + " " + f"--export_path '{export_path}'"
    
    # Run the shell command and capture the output
    #subprocess.check_output(shell_command, shell=True)
