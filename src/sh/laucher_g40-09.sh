#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000098-g40-09.sh
sbatch ./src/sh/000001-000099-g40-09.sh
sbatch ./src/sh/000001-000069-g40-09.sh
sbatch ./src/sh/000001-000096-g40-09.sh
sbatch ./src/sh/000001-000090-g40-09.sh
sbatch ./src/sh/000001-000086-g40-09.sh
sbatch ./src/sh/000001-000072-g40-09.sh
sbatch ./src/sh/000001-000002-g40-09.sh
sleep 300