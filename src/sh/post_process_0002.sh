#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=02:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-2 --directory_input ./data/generated/problems/paper/original --directory_output ./tmp/result/ --output_name result_original
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-01 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-01
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-06 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-06
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-03 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-03
sleep 600