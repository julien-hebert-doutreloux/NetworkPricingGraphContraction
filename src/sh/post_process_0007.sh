#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=3G
#SBATCH --time=00:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=testing
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g35-05 --directory_output /scratch/hebjul --directory_original ./data/generated/problems/paper/original --output_name result_g35-05
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g50-01 --directory_output /scratch/hebjul --directory_original ./data/generated/problems/paper/original --output_name result_g50-01
sleep 5