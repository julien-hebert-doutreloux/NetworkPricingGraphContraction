#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000074-g35-10.sh
sbatch ./src/sh/000001-000080-g35-10.sh
sbatch ./src/sh/000001-000084-g35-10.sh
sbatch ./src/sh/000001-000086-g35-10.sh
sbatch ./src/sh/000001-000053-g35-10.sh
sbatch ./src/sh/000001-000078-g35-10.sh
sbatch ./src/sh/000001-000002-g35-10.sh
sbatch ./src/sh/000001-000088-g35-10.sh
sbatch ./src/sh/000001-000098-g35-10.sh
sbatch ./src/sh/000001-000099-g35-10.sh
sbatch ./src/sh/000001-000063-g35-10.sh
sbatch ./src/sh/000001-000096-g35-10.sh
sbatch ./src/sh/000001-000097-g35-10.sh
sleep 300