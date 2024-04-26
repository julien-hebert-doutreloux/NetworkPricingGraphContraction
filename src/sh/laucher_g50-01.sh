#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000017-000075-g50-01.sh
sbatch ./src/sh/000001-000005-000013-g50-01.sh
sbatch ./src/sh/000001-000011-000099-g50-01.sh
sbatch ./src/sh/000001-000000-000005-g50-01.sh
sbatch ./src/sh/000001-000019-000073-g50-01.sh
sbatch ./src/sh/000001-000020-000067-g50-01.sh
sbatch ./src/sh/000001-000006-000013-g50-01.sh
sbatch ./src/sh/000001-000003-000003-g50-01.sh
sbatch ./src/sh/000001-000016-000097-g50-01.sh
sbatch ./src/sh/000001-000012-000099-g50-01.sh
sbatch ./src/sh/000001-000008-000014-g50-01.sh
sbatch ./src/sh/000001-000015-000098-g50-01.sh
sbatch ./src/sh/000001-000004-000005-g50-01.sh
sbatch ./src/sh/000001-000014-000097-g50-01.sh
sbatch ./src/sh/000001-000009-000090-g50-01.sh
sbatch ./src/sh/000001-000018-000083-g50-01.sh
sbatch ./src/sh/000001-000001-000003-g50-01.sh
sbatch ./src/sh/000001-000021-000069-g50-01.sh
sbatch ./src/sh/000001-000013-000099-g50-01.sh
sbatch ./src/sh/000001-000010-000097-g50-01.sh
sbatch ./src/sh/000001-000002-000003-g50-01.sh
sbatch ./src/sh/000001-000007-000013-g50-01.sh
sleep 600