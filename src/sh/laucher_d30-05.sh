#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000087-d30-05.sh
sbatch ./src/sh/000001-000080-d30-05.sh
sbatch ./src/sh/000001-000075-d30-05.sh
sbatch ./src/sh/000001-000054-d30-05.sh
sbatch ./src/sh/000001-000055-d30-05.sh
sbatch ./src/sh/000001-000089-d30-05.sh
sbatch ./src/sh/000001-000053-d30-05.sh
sbatch ./src/sh/000001-000050-d30-05.sh
sbatch ./src/sh/000001-000098-d30-05.sh
sbatch ./src/sh/000001-000099-d30-05.sh
sbatch ./src/sh/000001-000093-d30-05.sh
sbatch ./src/sh/000001-000096-d30-05.sh
sbatch ./src/sh/000001-000094-d30-05.sh
sleep 300