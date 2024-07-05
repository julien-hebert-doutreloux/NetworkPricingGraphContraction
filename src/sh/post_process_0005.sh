#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=00:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=testing
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-10
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-10
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-08 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-08
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-06 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-06
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-05 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-05
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-04 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-04
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-04 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-04
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-10
sleep 100