#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000071-d30-08.sh
sbatch ./src/sh/000001-000099-d30-08.sh
sbatch ./src/sh/000001-000098-d30-08.sh
sbatch ./src/sh/000001-000093-d30-08.sh
sbatch ./src/sh/000001-000062-d30-08.sh
sbatch ./src/sh/000001-000097-d30-08.sh
sbatch ./src/sh/000001-000096-d30-08.sh
sbatch ./src/sh/000001-000094-d30-08.sh
sleep 300