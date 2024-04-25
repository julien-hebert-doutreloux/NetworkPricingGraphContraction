#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000094-g35-04.sh
sbatch ./src/sh/000001-000097-g35-04.sh
sbatch ./src/sh/000001-000099-g35-04.sh
sbatch ./src/sh/000001-000098-g35-04.sh
sbatch ./src/sh/000001-000069-g35-04.sh
sbatch ./src/sh/000001-000002-g35-04.sh
sbatch ./src/sh/000001-000074-g35-04.sh
sbatch ./src/sh/000001-000077-g35-04.sh
sbatch ./src/sh/000001-000087-g35-04.sh
sbatch ./src/sh/000001-000072-g35-04.sh
sbatch ./src/sh/000001-000059-g35-04.sh
sleep 300