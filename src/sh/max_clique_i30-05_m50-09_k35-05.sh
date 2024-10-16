#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G
#SBATCH --time=01:30:00
#SBATCH --output=null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
for i in $(seq 1 240); do
    python ./src/python/main.py option2 --input_file './data/from_github/problems/progressive-2/i30-05.json' --iteration $i --export_path './result/max_clique/'
	python ./src/python/main.py option2 --input_file './data/from_github/problems/progressive-2/m50-09.json' --iteration $i --export_path './result/max_clique/'
	python ./src/python/main.py option2 --input_file './data/from_github/problems/progressive-2/k35-05.json' --iteration $i --export_path './result/max_clique/'
done
sleep 300
    