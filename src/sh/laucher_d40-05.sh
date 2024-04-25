#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000064-d40-05.sh
sbatch ./src/sh/000001-000092-d40-05.sh
sbatch ./src/sh/000001-000097-d40-05.sh
sbatch ./src/sh/000001-000096-d40-05.sh
sbatch ./src/sh/000001-000094-d40-05.sh
sbatch ./src/sh/000001-000095-d40-05.sh
sbatch ./src/sh/000001-000068-d40-05.sh
sbatch ./src/sh/000001-000099-d40-05.sh
sbatch ./src/sh/000001-000098-d40-05.sh
sbatch ./src/sh/000001-000071-d40-05.sh
sbatch ./src/sh/000001-000070-d40-05.sh
sbatch ./src/sh/000001-000087-d40-05.sh
sbatch ./src/sh/000001-000072-d40-05.sh
sbatch ./src/sh/000001-000059-d40-05.sh
sleep 300