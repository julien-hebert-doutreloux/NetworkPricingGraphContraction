#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000099-g50-08.sh
sbatch ./src/sh/000001-000046-g50-08.sh
sbatch ./src/sh/000001-000098-g50-08.sh
sbatch ./src/sh/000001-000095-g50-08.sh
sbatch ./src/sh/000001-000074-g50-08.sh
sbatch ./src/sh/000001-000083-g50-08.sh
sbatch ./src/sh/000001-000084-g50-08.sh
sbatch ./src/sh/000001-000002-g50-08.sh
sbatch ./src/sh/000001-000079-g50-08.sh
sbatch ./src/sh/000001-000089-g50-08.sh
sleep 60