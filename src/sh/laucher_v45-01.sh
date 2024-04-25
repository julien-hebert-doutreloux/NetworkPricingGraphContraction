#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000094-v45-01.sh
sbatch ./src/sh/000001-000096-v45-01.sh
sbatch ./src/sh/000001-000097-v45-01.sh
sbatch ./src/sh/000001-000098-v45-01.sh
sbatch ./src/sh/000001-000099-v45-01.sh
sbatch ./src/sh/000001-000089-v45-01.sh
sbatch ./src/sh/000001-000002-v45-01.sh
sbatch ./src/sh/000001-000087-v45-01.sh
sbatch ./src/sh/000001-000083-v45-01.sh
sleep 60