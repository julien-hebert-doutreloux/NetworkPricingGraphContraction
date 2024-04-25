#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000003-v30-05.sh
sbatch ./src/sh/000001-000089-v30-05.sh
sbatch ./src/sh/000001-000081-v30-05.sh
sbatch ./src/sh/000001-000024-v30-05.sh
sbatch ./src/sh/000001-000025-v30-05.sh
sbatch ./src/sh/000001-000023-v30-05.sh
sbatch ./src/sh/000001-000094-v30-05.sh
sbatch ./src/sh/000001-000092-v30-05.sh
sbatch ./src/sh/000001-000098-v30-05.sh
sbatch ./src/sh/000001-000099-v30-05.sh
sbatch ./src/sh/000001-000011-v30-05.sh
sbatch ./src/sh/000001-000012-v30-05.sh
sleep 600