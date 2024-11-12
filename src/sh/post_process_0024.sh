#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=3G
#SBATCH --time=00:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=testing
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-06 --directory_output ~/scratch/hebjul --directory_original ./data/generated/problems/paper/original --output_name result_g50-06
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-04 --directory_output ~/scratch/hebjul --directory_original ./data/generated/problems/paper/original --output_name result_g50-04
sleep 5