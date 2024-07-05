#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=00:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-10
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-10
sleep 100