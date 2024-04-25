#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000096-g35-06.sh
sbatch ./src/sh/000001-000061-g35-06.sh
sbatch ./src/sh/000001-000098-g35-06.sh
sbatch ./src/sh/000001-000014-g35-06.sh
sbatch ./src/sh/000001-000099-g35-06.sh
sbatch ./src/sh/000001-000013-g35-06.sh
sbatch ./src/sh/000001-000003-g35-06.sh
sbatch ./src/sh/000001-000005-g35-06.sh
sbatch ./src/sh/000001-000077-g35-06.sh
sbatch ./src/sh/000001-000074-g35-06.sh
sbatch ./src/sh/000001-000070-g35-06.sh
sbatch ./src/sh/000001-000084-g35-06.sh
sbatch ./src/sh/000001-000073-g35-06.sh
sleep 60