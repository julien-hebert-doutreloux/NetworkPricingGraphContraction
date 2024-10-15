
#!/bin/bash
#SBATCH --cpus-per-task=10
#SBATCH --mem=5G
#SBATCH --time=1:25:00
#SBATCH --output=/tmp/logging.txt
#SBATCH --partition=testing
module load python/3.12.0
source venev/bin/activate
for ((i=1; i<=240; i++)); do
    python ./src/python/main.py option2 --input_file './data/from_github/problems/paper/d30-03.json' --iteration $i --export_path './result/max_clique/'
done
sleep 60
    