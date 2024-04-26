#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000008-000072-g40-07.sh
sbatch ./src/sh/000001-000007-000093-g40-07.sh
sbatch ./src/sh/000001-000004-000099-g40-07.sh
sbatch ./src/sh/000001-000003-000099-g40-07.sh
sbatch ./src/sh/000001-000002-000097-g40-07.sh
sbatch ./src/sh/000001-000005-000096-g40-07.sh
sbatch ./src/sh/000001-000001-000098-g40-07.sh
sbatch ./src/sh/000001-000006-000098-g40-07.sh
sbatch ./src/sh/000001-000011-000064-g40-07.sh
sbatch ./src/sh/000001-000012-000063-g40-07.sh
sbatch ./src/sh/000001-000010-000071-g40-07.sh
sbatch ./src/sh/000001-000000-000089-g40-07.sh
sbatch ./src/sh/000001-000009-000078-g40-07.sh
sleep 600