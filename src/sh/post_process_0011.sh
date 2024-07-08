#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=01:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-08 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-08
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-09 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-09
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-10
sleep 600