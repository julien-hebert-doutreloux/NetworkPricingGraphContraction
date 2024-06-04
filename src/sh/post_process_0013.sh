#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=13:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-2 --directory_input ./data/generated/problems/paper/original --directory_output ./tmp/result/ --output_name result_original
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-01 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-01
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-06 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-06
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-03 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-03
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-01 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-01
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-07 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-07
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-07 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-07
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-03 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g50-03
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-08 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-08
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-05 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-05
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-02 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-02
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-05 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-05
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-01 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-01
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-10
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-04 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-04
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-06 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g30-06
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-09 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-09
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-03 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-03
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-02 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-02
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-09 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g50-09
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-09 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-09
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-08 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-08
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g35-10
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g45-10 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g45-10
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-06 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-06
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-05 --directory_output ./tmp/result/ --directory_original ./data/generated/problems/paper/original --output_name result_g40-05
sleep 600