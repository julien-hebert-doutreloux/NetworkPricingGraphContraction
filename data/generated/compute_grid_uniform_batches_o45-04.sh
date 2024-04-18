#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=0:5:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
python src/python/main.py option5 5-2 --input_directory_graphs ./data/generated/graphs/progressive-2/o45-04 --input_directory_transformations ./data/generated/transformations/progressive-2/o45-04
sleep 60