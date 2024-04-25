#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000095-d40-09.sh
sbatch ./src/sh/000001-000097-d40-09.sh
sbatch ./src/sh/000001-000063-d40-09.sh
sbatch ./src/sh/000001-000067-d40-09.sh
sbatch ./src/sh/000001-000099-d40-09.sh
sbatch ./src/sh/000001-000098-d40-09.sh
sbatch ./src/sh/000001-000079-d40-09.sh
sbatch ./src/sh/000001-000088-d40-09.sh
sbatch ./src/sh/000001-000075-d40-09.sh
sbatch ./src/sh/000001-000070-d40-09.sh
sleep 60