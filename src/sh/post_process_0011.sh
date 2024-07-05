#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=00:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=testing
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-04 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-04
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-06 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-06
sleep 100