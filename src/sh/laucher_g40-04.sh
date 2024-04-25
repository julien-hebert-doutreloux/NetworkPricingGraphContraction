#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000002-g40-04.sh
sbatch ./src/sh/000001-000057-g40-04.sh
sbatch ./src/sh/000001-000080-g40-04.sh
sbatch ./src/sh/000001-000083-g40-04.sh
sbatch ./src/sh/000001-000073-g40-04.sh
sbatch ./src/sh/000001-000072-g40-04.sh
sbatch ./src/sh/000001-000070-g40-04.sh
sbatch ./src/sh/000001-000061-g40-04.sh
sbatch ./src/sh/000001-000097-g40-04.sh
sbatch ./src/sh/000001-000093-g40-04.sh
sbatch ./src/sh/000001-000098-g40-04.sh
sbatch ./src/sh/000001-000099-g40-04.sh
sleep 60