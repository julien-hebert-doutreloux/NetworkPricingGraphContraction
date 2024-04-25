#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000074-h30-09.sh
sbatch ./src/sh/000001-000081-h30-09.sh
sbatch ./src/sh/000001-000071-h30-09.sh
sbatch ./src/sh/000001-000073-h30-09.sh
sbatch ./src/sh/000001-000078-h30-09.sh
sbatch ./src/sh/000001-000053-h30-09.sh
sbatch ./src/sh/000001-000046-h30-09.sh
sbatch ./src/sh/000001-000099-h30-09.sh
sbatch ./src/sh/000001-000098-h30-09.sh
sbatch ./src/sh/000001-000041-h30-09.sh
sbatch ./src/sh/000001-000040-h30-09.sh
sbatch ./src/sh/000001-000042-h30-09.sh
sbatch ./src/sh/000001-000097-h30-09.sh
sbatch ./src/sh/000001-000063-h30-09.sh
sbatch ./src/sh/000001-000095-h30-09.sh
sbatch ./src/sh/000001-000091-h30-09.sh
sbatch ./src/sh/000001-000093-h30-09.sh
sleep 600