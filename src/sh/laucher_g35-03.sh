#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000064-g35-03.sh
sbatch ./src/sh/000001-000096-g35-03.sh
sbatch ./src/sh/000001-000060-g35-03.sh
sbatch ./src/sh/000001-000099-g35-03.sh
sbatch ./src/sh/000001-000014-g35-03.sh
sbatch ./src/sh/000001-000005-g35-03.sh
sbatch ./src/sh/000001-000089-g35-03.sh
sbatch ./src/sh/000001-000088-g35-03.sh
sbatch ./src/sh/000001-000003-g35-03.sh
sbatch ./src/sh/000001-000076-g35-03.sh
sleep 60