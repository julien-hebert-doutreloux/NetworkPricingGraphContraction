#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000077-g30-09.sh
sbatch ./src/sh/000001-000083-g30-09.sh
sbatch ./src/sh/000001-000073-g30-09.sh
sbatch ./src/sh/000001-000063-g30-09.sh
sbatch ./src/sh/000001-000097-g30-09.sh
sbatch ./src/sh/000001-000093-g30-09.sh
sbatch ./src/sh/000001-000098-g30-09.sh
sbatch ./src/sh/000001-000099-g30-09.sh
sleep 60