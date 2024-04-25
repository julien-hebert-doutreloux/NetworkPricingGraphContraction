#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000067-d45-06.sh
sbatch ./src/sh/000001-000066-d45-06.sh
sbatch ./src/sh/000001-000096-d45-06.sh
sbatch ./src/sh/000001-000098-d45-06.sh
sbatch ./src/sh/000001-000099-d45-06.sh
sbatch ./src/sh/000001-000085-d45-06.sh
sbatch ./src/sh/000001-000073-d45-06.sh
sbatch ./src/sh/000001-000087-d45-06.sh
sbatch ./src/sh/000001-000077-d45-06.sh
sleep 300