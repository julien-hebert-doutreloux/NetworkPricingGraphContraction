#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G
#SBATCH --time=01:30:00
#SBATCH --output=null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
for ((i=1; i<=240; i++)); do
    python ./src/python/main.py option2 --input_file './data/from_github/problems/progressive-2/l30-01.json' --iteration $i --export_path './result/max_clique/'
	python ./src/python/main.py option2 --input_file './data/from_github/problems/progressive-2/n35-04.json' --iteration $i --export_path './result/max_clique/'
	python ./src/python/main.py option2 --input_file './data/from_github/problems/progressive-2/m40-07.json' --iteration $i --export_path './result/max_clique/'
done
sleep 300
    