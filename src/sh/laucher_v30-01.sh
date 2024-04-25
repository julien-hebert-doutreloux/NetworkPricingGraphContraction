#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000097-v30-01.sh
sbatch ./src/sh/000001-000091-v30-01.sh
sbatch ./src/sh/000001-000093-v30-01.sh
sbatch ./src/sh/000001-000098-v30-01.sh
sbatch ./src/sh/000001-000099-v30-01.sh
sbatch ./src/sh/000001-000085-v30-01.sh
sbatch ./src/sh/000001-000086-v30-01.sh
sleep 60