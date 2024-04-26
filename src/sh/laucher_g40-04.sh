#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000002-000002-g40-04.sh
sbatch ./src/sh/000001-000007-000098-g40-04.sh
sbatch ./src/sh/000001-000010-000097-g40-04.sh
sbatch ./src/sh/000001-000009-000093-g40-04.sh
sbatch ./src/sh/000001-000001-000002-g40-04.sh
sbatch ./src/sh/000001-000011-000085-g40-04.sh
sbatch ./src/sh/000001-000016-000063-g40-04.sh
sbatch ./src/sh/000001-000006-000098-g40-04.sh
sbatch ./src/sh/000001-000014-000082-g40-04.sh
sbatch ./src/sh/000001-000003-000002-g40-04.sh
sbatch ./src/sh/000001-000012-000061-g40-04.sh
sbatch ./src/sh/000001-000005-000098-g40-04.sh
sbatch ./src/sh/000001-000008-000097-g40-04.sh
sbatch ./src/sh/000001-000015-000063-g40-04.sh
sbatch ./src/sh/000001-000000-000002-g40-04.sh
sbatch ./src/sh/000001-000004-000083-g40-04.sh
sbatch ./src/sh/000001-000013-000078-g40-04.sh
sleep 600