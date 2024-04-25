#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000097-g45-08.sh
sbatch ./src/sh/000001-000093-g45-08.sh
sbatch ./src/sh/000001-000099-g45-08.sh
sbatch ./src/sh/000001-000098-g45-08.sh
sbatch ./src/sh/000001-000012-g45-08.sh
sbatch ./src/sh/000001-000011-g45-08.sh
sbatch ./src/sh/000001-000078-g45-08.sh
sbatch ./src/sh/000001-000028-g45-08.sh
sbatch ./src/sh/000001-000003-g45-08.sh
sbatch ./src/sh/000001-000088-g45-08.sh
sbatch ./src/sh/000001-000076-g45-08.sh
sbatch ./src/sh/000001-000074-g45-08.sh
sbatch ./src/sh/000001-000071-g45-08.sh
sbatch ./src/sh/000001-000022-g45-08.sh
sbatch ./src/sh/000001-000023-g45-08.sh
sbatch ./src/sh/000001-000072-g45-08.sh
sleep 300