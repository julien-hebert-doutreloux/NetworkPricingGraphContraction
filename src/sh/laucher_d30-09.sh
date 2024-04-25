#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000068-d30-09.sh
sbatch ./src/sh/000001-000098-d30-09.sh
sbatch ./src/sh/000001-000099-d30-09.sh
sbatch ./src/sh/000001-000096-d30-09.sh
sbatch ./src/sh/000001-000097-d30-09.sh
sbatch ./src/sh/000001-000095-d30-09.sh
sbatch ./src/sh/000001-000094-d30-09.sh
sbatch ./src/sh/000001-000070-d30-09.sh
sbatch ./src/sh/000001-000073-d30-09.sh
sbatch ./src/sh/000001-000087-d30-09.sh
sbatch ./src/sh/000001-000075-d30-09.sh
sbatch ./src/sh/000001-000089-d30-09.sh
sleep 600