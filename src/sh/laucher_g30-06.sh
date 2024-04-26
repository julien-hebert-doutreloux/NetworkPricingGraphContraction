#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000006-000089-g30-06.sh
sbatch ./src/sh/000001-000001-000003-g30-06.sh
sbatch ./src/sh/000001-000002-000007-g30-06.sh
sbatch ./src/sh/000001-000005-000007-g30-06.sh
sbatch ./src/sh/000001-000000-000003-g30-06.sh
sbatch ./src/sh/000001-000004-000007-g30-06.sh
sbatch ./src/sh/000001-000003-000007-g30-06.sh
sleep 600