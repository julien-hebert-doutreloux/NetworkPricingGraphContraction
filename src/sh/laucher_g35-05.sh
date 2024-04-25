#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000077-g35-05.sh
sbatch ./src/sh/000001-000083-g35-05.sh
sbatch ./src/sh/000001-000084-g35-05.sh
sbatch ./src/sh/000001-000071-g35-05.sh
sbatch ./src/sh/000001-000002-g35-05.sh
sbatch ./src/sh/000001-000098-g35-05.sh
sbatch ./src/sh/000001-000099-g35-05.sh
sbatch ./src/sh/000001-000062-g35-05.sh
sbatch ./src/sh/000001-000097-g35-05.sh
sbatch ./src/sh/000001-000092-g35-05.sh
sbatch ./src/sh/000001-000064-g35-05.sh
sleep 600