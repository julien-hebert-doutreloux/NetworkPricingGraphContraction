#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000003-g30-06.sh
sbatch ./src/sh/000001-000007-g30-06.sh
sbatch ./src/sh/000001-000090-g30-06.sh
sleep 600