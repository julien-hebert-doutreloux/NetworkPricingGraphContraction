#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000087-v35-01.sh
sbatch ./src/sh/000001-000005-v35-01.sh
sbatch ./src/sh/000001-000003-v35-01.sh
sbatch ./src/sh/000001-000013-v35-01.sh
sbatch ./src/sh/000001-000099-v35-01.sh
sbatch ./src/sh/000001-000014-v35-01.sh
sbatch ./src/sh/000001-000091-v35-01.sh
sbatch ./src/sh/000001-000092-v35-01.sh
sbatch ./src/sh/000001-000097-v35-01.sh
sbatch ./src/sh/000001-000094-v35-01.sh
sleep 600