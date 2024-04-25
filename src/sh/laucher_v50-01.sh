#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000092-v50-01.sh
sbatch ./src/sh/000001-000099-v50-01.sh
sbatch ./src/sh/000001-000087-v50-01.sh
sbatch ./src/sh/000001-000086-v50-01.sh
sbatch ./src/sh/000001-000085-v50-01.sh
sleep 300