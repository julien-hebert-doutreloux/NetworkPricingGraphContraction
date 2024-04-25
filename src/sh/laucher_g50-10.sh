#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000099-g50-10.sh
sbatch ./src/sh/000001-000098-g50-10.sh
sbatch ./src/sh/000001-000068-g50-10.sh
sbatch ./src/sh/000001-000096-g50-10.sh
sbatch ./src/sh/000001-000094-g50-10.sh
sbatch ./src/sh/000001-000061-g50-10.sh
sbatch ./src/sh/000001-000090-g50-10.sh
sbatch ./src/sh/000001-000064-g50-10.sh
sbatch ./src/sh/000001-000067-g50-10.sh
sbatch ./src/sh/000001-000076-g50-10.sh
sbatch ./src/sh/000001-000002-g50-10.sh
sbatch ./src/sh/000001-000088-g50-10.sh
sleep 300