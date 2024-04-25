#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000098-v30-06.sh
sbatch ./src/sh/000001-000014-v30-06.sh
sbatch ./src/sh/000001-000013-v30-06.sh
sbatch ./src/sh/000001-000003-v30-06.sh
sbatch ./src/sh/000001-000005-v30-06.sh
sleep 60