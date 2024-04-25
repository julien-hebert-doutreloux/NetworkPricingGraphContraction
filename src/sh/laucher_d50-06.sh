#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000098-d50-06.sh
sbatch ./src/sh/000001-000099-d50-06.sh
sbatch ./src/sh/000001-000068-d50-06.sh
sbatch ./src/sh/000001-000095-d50-06.sh
sbatch ./src/sh/000001-000096-d50-06.sh
sbatch ./src/sh/000001-000062-d50-06.sh
sbatch ./src/sh/000001-000097-d50-06.sh
sbatch ./src/sh/000001-000059-d50-06.sh
sbatch ./src/sh/000001-000087-d50-06.sh
sbatch ./src/sh/000001-000085-d50-06.sh
sbatch ./src/sh/000001-000084-d50-06.sh
sbatch ./src/sh/000001-000053-d50-06.sh
sbatch ./src/sh/000001-000056-d50-06.sh
sleep 300