#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000061-d35-10.sh
sbatch ./src/sh/000001-000095-d35-10.sh
sbatch ./src/sh/000001-000097-d35-10.sh
sbatch ./src/sh/000001-000096-d35-10.sh
sbatch ./src/sh/000001-000066-d35-10.sh
sbatch ./src/sh/000001-000092-d35-10.sh
sbatch ./src/sh/000001-000065-d35-10.sh
sbatch ./src/sh/000001-000091-d35-10.sh
sbatch ./src/sh/000001-000099-d35-10.sh
sbatch ./src/sh/000001-000098-d35-10.sh
sbatch ./src/sh/000001-000068-d35-10.sh
sbatch ./src/sh/000001-000051-d35-10.sh
sleep 600