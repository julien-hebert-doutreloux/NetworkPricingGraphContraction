#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000001-000002-g35-07.sh
sbatch ./src/sh/000001-000002-000002-g35-07.sh
sbatch ./src/sh/000001-000004-000090-g35-07.sh
sbatch ./src/sh/000001-000007-000099-g35-07.sh
sbatch ./src/sh/000001-000005-000098-g35-07.sh
sbatch ./src/sh/000001-000000-000002-g35-07.sh
sbatch ./src/sh/000001-000006-000099-g35-07.sh
sbatch ./src/sh/000001-000003-000002-g35-07.sh
sleep 600