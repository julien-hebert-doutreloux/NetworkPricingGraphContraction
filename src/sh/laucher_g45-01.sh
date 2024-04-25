#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000003-g45-01.sh
sbatch ./src/sh/000001-000088-g45-01.sh
sbatch ./src/sh/000001-000057-g45-01.sh
sbatch ./src/sh/000001-000005-g45-01.sh
sbatch ./src/sh/000001-000076-g45-01.sh
sbatch ./src/sh/000001-000085-g45-01.sh
sbatch ./src/sh/000001-000070-g45-01.sh
sbatch ./src/sh/000001-000071-g45-01.sh
sbatch ./src/sh/000001-000097-g45-01.sh
sbatch ./src/sh/000001-000064-g45-01.sh
sbatch ./src/sh/000001-000091-g45-01.sh
sbatch ./src/sh/000001-000098-g45-01.sh
sbatch ./src/sh/000001-000014-g45-01.sh
sbatch ./src/sh/000001-000099-g45-01.sh
sbatch ./src/sh/000001-000013-g45-01.sh
sbatch ./src/sh/000001-000012-g45-01.sh
sleep 300