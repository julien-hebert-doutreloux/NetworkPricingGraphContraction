#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000002-000002-g40-09.sh
sbatch ./src/sh/000001-000007-000099-g40-09.sh
sbatch ./src/sh/000001-000015-000070-g40-09.sh
sbatch ./src/sh/000001-000012-000070-g40-09.sh
sbatch ./src/sh/000001-000001-000002-g40-09.sh
sbatch ./src/sh/000001-000009-000097-g40-09.sh
sbatch ./src/sh/000001-000010-000098-g40-09.sh
sbatch ./src/sh/000001-000006-000099-g40-09.sh
sbatch ./src/sh/000001-000014-000070-g40-09.sh
sbatch ./src/sh/000001-000004-000088-g40-09.sh
sbatch ./src/sh/000001-000011-000095-g40-09.sh
sbatch ./src/sh/000001-000008-000099-g40-09.sh
sbatch ./src/sh/000001-000013-000074-g40-09.sh
sbatch ./src/sh/000001-000003-000002-g40-09.sh
sbatch ./src/sh/000001-000005-000098-g40-09.sh
sbatch ./src/sh/000001-000000-000002-g40-09.sh
sbatch ./src/sh/000001-000016-000068-g40-09.sh
sleep 600