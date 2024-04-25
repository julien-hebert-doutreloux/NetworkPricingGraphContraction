#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000083-g40-03.sh
sbatch ./src/sh/000001-000073-g40-03.sh
sbatch ./src/sh/000001-000070-g40-03.sh
sbatch ./src/sh/000001-000084-g40-03.sh
sbatch ./src/sh/000001-000003-g40-03.sh
sbatch ./src/sh/000001-000005-g40-03.sh
sbatch ./src/sh/000001-000014-g40-03.sh
sbatch ./src/sh/000001-000098-g40-03.sh
sbatch ./src/sh/000001-000099-g40-03.sh
sbatch ./src/sh/000001-000068-g40-03.sh
sbatch ./src/sh/000001-000013-g40-03.sh
sbatch ./src/sh/000001-000096-g40-03.sh
sleep 300