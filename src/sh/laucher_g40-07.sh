#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000099-g40-07.sh
sbatch ./src/sh/000001-000097-g40-07.sh
sbatch ./src/sh/000001-000061-g40-07.sh
sbatch ./src/sh/000001-000093-g40-07.sh
sbatch ./src/sh/000001-000066-g40-07.sh
sbatch ./src/sh/000001-000070-g40-07.sh
sbatch ./src/sh/000001-000071-g40-07.sh
sbatch ./src/sh/000001-000072-g40-07.sh
sbatch ./src/sh/000001-000087-g40-07.sh
sbatch ./src/sh/000001-000089-g40-07.sh
sleep 600