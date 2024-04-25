#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000063-g35-01.sh
sbatch ./src/sh/000001-000096-g35-01.sh
sbatch ./src/sh/000001-000095-g35-01.sh
sbatch ./src/sh/000001-000099-g35-01.sh
sbatch ./src/sh/000001-000098-g35-01.sh
sbatch ./src/sh/000001-000068-g35-01.sh
sbatch ./src/sh/000001-000002-g35-01.sh
sbatch ./src/sh/000001-000077-g35-01.sh
sbatch ./src/sh/000001-000075-g35-01.sh
sbatch ./src/sh/000001-000072-g35-01.sh
sbatch ./src/sh/000001-000086-g35-01.sh
sleep 300