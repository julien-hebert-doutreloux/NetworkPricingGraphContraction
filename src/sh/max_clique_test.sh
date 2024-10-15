#!/bin/bash
#SBATCH --cpus-per-task=10
#SBATCH --mem=5G
#SBATCH --time=00:14:30
#SBATCH --output=/tmp/logging.txt
#SBATCH --partition=optimum
#module load python/3.12.0
#source venev/bin/activate
python src/python/testing/test_max_clique_script.py
sleep 600
