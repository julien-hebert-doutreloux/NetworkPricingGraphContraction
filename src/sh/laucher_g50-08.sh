#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000001-000002-g50-08.sh
sbatch ./src/sh/000001-000011-000082-g50-08.sh
sbatch ./src/sh/000001-000010-000098-g50-08.sh
sbatch ./src/sh/000001-000015-000083-g50-08.sh
sbatch ./src/sh/000001-000004-000092-g50-08.sh
sbatch ./src/sh/000001-000002-000002-g50-08.sh
sbatch ./src/sh/000001-000016-000078-g50-08.sh
sbatch ./src/sh/000001-000007-000098-g50-08.sh
sbatch ./src/sh/000001-000009-000098-g50-08.sh
sbatch ./src/sh/000001-000014-000088-g50-08.sh
sbatch ./src/sh/000001-000008-000095-g50-08.sh
sbatch ./src/sh/000001-000000-000002-g50-08.sh
sbatch ./src/sh/000001-000012-000046-g50-08.sh
sbatch ./src/sh/000001-000005-000097-g50-08.sh
sbatch ./src/sh/000001-000013-000085-g50-08.sh
sbatch ./src/sh/000001-000006-000098-g50-08.sh
sbatch ./src/sh/000001-000003-000002-g50-08.sh
sleep 600