#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000098-g40-10.sh
sbatch ./src/sh/000001-000099-g40-10.sh
sbatch ./src/sh/000001-000092-g40-10.sh
sbatch ./src/sh/000001-000067-g40-10.sh
sbatch ./src/sh/000001-000093-g40-10.sh
sbatch ./src/sh/000001-000090-g40-10.sh
sbatch ./src/sh/000001-000063-g40-10.sh
sbatch ./src/sh/000001-000096-g40-10.sh
sbatch ./src/sh/000001-000074-g40-10.sh
sbatch ./src/sh/000001-000075-g40-10.sh
sbatch ./src/sh/000001-000002-g40-10.sh
sbatch ./src/sh/000001-000079-g40-10.sh
sleep 300