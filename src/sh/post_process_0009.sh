#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=00:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=testing
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-2 --directory_input ./data/generated/problems/paper/original --directory_output ./tmp/result/ --output_name result_original
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-08 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g50-08
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-03 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-03
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-01 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-01
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-02 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g50-02
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-03 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g50-03
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-08 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-08
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-01 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g50-01
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-05 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-05
sleep 900