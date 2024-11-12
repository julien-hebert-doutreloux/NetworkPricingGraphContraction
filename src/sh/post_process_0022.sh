#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=3G
#SBATCH --time=00:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=testing
module load python/3.12.0
source venev/bin/activate
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g30-02 --directory_output ~/scratch/hebjul --directory_original ./data/generated/problems/paper/original --output_name result_g30-02
python ./src/python/main.py option5 5-3 --directory_input ./data/generated/problems/paper/g40-03 --directory_output ~/scratch/hebjul --directory_original ./data/generated/problems/paper/original --output_name result_g40-03
sleep 5