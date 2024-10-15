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



directory = './data/from_github/problems/paper'
export_path = './result/max_clique/initial/'

json_files = find_json_files(directory)

for path in json_files:
    print(path)
    shell_command = f"seq 100 | parallel -j 10 python ./src/python/main.py option2 --input_file '{path}'" + " " + "--option '1' --iteration {}" + " " + f"--export_path '{export_path}'"
    
    # Run the shell command and capture the output
    subprocess.check_output(shell_command, shell=True)
