#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000092-d35-07.sh
sbatch ./src/sh/000001-000067-d35-07.sh
sbatch ./src/sh/000001-000064-d35-07.sh
sbatch ./src/sh/000001-000094-d35-07.sh
sbatch ./src/sh/000001-000095-d35-07.sh
sbatch ./src/sh/000001-000060-d35-07.sh
sbatch ./src/sh/000001-000062-d35-07.sh
sbatch ./src/sh/000001-000096-d35-07.sh
sbatch ./src/sh/000001-000099-d35-07.sh
sbatch ./src/sh/000001-000098-d35-07.sh
sbatch ./src/sh/000001-000078-d35-07.sh
sleep 300