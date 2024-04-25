#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000096-g35-08.sh
sbatch ./src/sh/000001-000065-g35-08.sh
sbatch ./src/sh/000001-000093-g35-08.sh
sbatch ./src/sh/000001-000014-g35-08.sh
sbatch ./src/sh/000001-000099-g35-08.sh
sbatch ./src/sh/000001-000013-g35-08.sh
sbatch ./src/sh/000001-000069-g35-08.sh
sbatch ./src/sh/000001-000078-g35-08.sh
sbatch ./src/sh/000001-000003-g35-08.sh
sbatch ./src/sh/000001-000055-g35-08.sh
sbatch ./src/sh/000001-000005-g35-08.sh
sbatch ./src/sh/000001-000085-g35-08.sh
sbatch ./src/sh/000001-000087-g35-08.sh
sleep 300