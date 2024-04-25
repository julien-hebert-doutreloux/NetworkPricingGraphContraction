#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000071-d40-06.sh
sbatch ./src/sh/000001-000059-d40-06.sh
sbatch ./src/sh/000001-000089-d40-06.sh
sbatch ./src/sh/000001-000098-d40-06.sh
sbatch ./src/sh/000001-000099-d40-06.sh
sbatch ./src/sh/000001-000063-d40-06.sh
sbatch ./src/sh/000001-000061-d40-06.sh
sbatch ./src/sh/000001-000094-d40-06.sh
sbatch ./src/sh/000001-000064-d40-06.sh
sbatch ./src/sh/000001-000090-d40-06.sh
sbatch ./src/sh/000001-000093-d40-06.sh
sleep 60