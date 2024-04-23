#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000100-v40-01.sh
sbatch ./src/sh/000002-000101-v40-01.sh
sbatch ./src/sh/000003-000101-v40-01.sh
sbatch ./src/sh/000004-000101-v40-01.sh
sbatch ./src/sh/000005-000101-v40-01.sh
sbatch ./src/sh/000006-000101-v40-01.sh
sbatch ./src/sh/000007-000050-v40-01.sh
sleep 60