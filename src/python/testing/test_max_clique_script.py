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



directory = './data/from_github/problems/paper/'
export_path = './result/max_clique/'

json_files = find_json_files(directory)

for path in json_files:

    content = f"""#!/bin/bash
#SBATCH --cpus-per-task=10
#SBATCH --mem=5G
#SBATCH --time=1:25:00
#SBATCH --output=/tmp/logging.txt
#SBATCH --partition=testing
module load python/3.12.0
source venev/bin/activate
for ((i=1; i<=240; i++)); do
    python ./src/python/main.py option2 --input_file '{path}' --iteration $i --export_path '{export_path}'
done
sleep 60
    """
    name = os.path.splitext(os.path.basename(path))[0]
    with open(os.path.join('./src/sh/', f"max_clique_{name}.sh"), 'w') as f:
        f.write(content)
    

    
    
    
    #shell_command = f"seq 100 python ./src/python/main.py option2 --input_file '{path}'" + " " + "--option '1' --iteration {}" + " " + f"--export_path '{export_path}'"
    
    # Run the shell command and capture the output
    #subprocess.check_output(shell_command, shell=True)
