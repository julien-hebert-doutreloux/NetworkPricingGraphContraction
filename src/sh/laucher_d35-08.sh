#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000076-d35-08.sh
sbatch ./src/sh/000001-000071-d35-08.sh
sbatch ./src/sh/000001-000096-d35-08.sh
sbatch ./src/sh/000001-000063-d35-08.sh
sbatch ./src/sh/000001-000097-d35-08.sh
sbatch ./src/sh/000001-000061-d35-08.sh
sbatch ./src/sh/000001-000091-d35-08.sh
sbatch ./src/sh/000001-000064-d35-08.sh
sbatch ./src/sh/000001-000065-d35-08.sh
sbatch ./src/sh/000001-000093-d35-08.sh
sbatch ./src/sh/000001-000098-d35-08.sh
sbatch ./src/sh/000001-000099-d35-08.sh
sleep 60