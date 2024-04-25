#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000002-g30-01.sh
sbatch ./src/sh/000001-000076-g30-01.sh
sbatch ./src/sh/000001-000083-g30-01.sh
sbatch ./src/sh/000001-000097-g30-01.sh
sbatch ./src/sh/000001-000094-g30-01.sh
sbatch ./src/sh/000001-000065-g30-01.sh
sbatch ./src/sh/000001-000093-g30-01.sh
sbatch ./src/sh/000001-000099-g30-01.sh
sbatch ./src/sh/000001-000098-g30-01.sh
sbatch ./src/sh/000001-000068-g30-01.sh
sbatch ./src/sh/000001-000069-g30-01.sh
sleep 300