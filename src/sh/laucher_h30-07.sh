#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000005-h30-07.sh
sbatch ./src/sh/000001-000088-h30-07.sh
sbatch ./src/sh/000001-000018-h30-07.sh
sbatch ./src/sh/000001-000019-h30-07.sh
sbatch ./src/sh/000001-000097-h30-07.sh
sbatch ./src/sh/000001-000030-h30-07.sh
sbatch ./src/sh/000001-000035-h30-07.sh
sbatch ./src/sh/000001-000092-h30-07.sh
sbatch ./src/sh/000001-000091-h30-07.sh
sbatch ./src/sh/000001-000099-h30-07.sh
sbatch ./src/sh/000001-000014-h30-07.sh
sleep 60