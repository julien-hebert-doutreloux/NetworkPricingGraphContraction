#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000077-g45-07.sh
sbatch ./src/sh/000001-000073-g45-07.sh
sbatch ./src/sh/000001-000003-g45-07.sh
sbatch ./src/sh/000001-000088-g45-07.sh
sbatch ./src/sh/000001-000005-g45-07.sh
sbatch ./src/sh/000001-000014-g45-07.sh
sbatch ./src/sh/000001-000098-g45-07.sh
sbatch ./src/sh/000001-000099-g45-07.sh
sbatch ./src/sh/000001-000069-g45-07.sh
sbatch ./src/sh/000001-000068-g45-07.sh
sbatch ./src/sh/000001-000096-g45-07.sh
sbatch ./src/sh/000001-000067-g45-07.sh
sleep 60