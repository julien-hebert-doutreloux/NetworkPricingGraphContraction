#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:05:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000000-000000-v50-10-.sh
sbatch ./src/sh/000001-000100-v50-10-.sh
sbatch ./src/sh/000002-000101-v50-10-.sh
sbatch ./src/sh/000003-000101-v50-10-.sh
sbatch ./src/sh/000004-000101-v50-10-.sh
sbatch ./src/sh/000005-000101-v50-10-.sh
sbatch ./src/sh/000006-000101-v50-10-.sh
sbatch ./src/sh/000007-000094-v50-10-.sh
sleep 60