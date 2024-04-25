#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000050-d30-07.sh
sbatch ./src/sh/000001-000058-d30-07.sh
sbatch ./src/sh/000001-000085-d30-07.sh
sbatch ./src/sh/000001-000093-d30-07.sh
sbatch ./src/sh/000001-000090-d30-07.sh
sbatch ./src/sh/000001-000064-d30-07.sh
sbatch ./src/sh/000001-000094-d30-07.sh
sbatch ./src/sh/000001-000060-d30-07.sh
sbatch ./src/sh/000001-000095-d30-07.sh
sbatch ./src/sh/000001-000096-d30-07.sh
sbatch ./src/sh/000001-000063-d30-07.sh
sbatch ./src/sh/000001-000099-d30-07.sh
sbatch ./src/sh/000001-000098-d30-07.sh
sleep 600