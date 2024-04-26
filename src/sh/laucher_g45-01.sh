#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000007-000014-g45-01.sh
sbatch ./src/sh/000001-000013-000099-g45-01.sh
sbatch ./src/sh/000001-000002-000003-g45-01.sh
sbatch ./src/sh/000001-000020-000070-g45-01.sh
sbatch ./src/sh/000001-000021-000064-g45-01.sh
sbatch ./src/sh/000001-000010-000098-g45-01.sh
sbatch ./src/sh/000001-000014-000093-g45-01.sh
sbatch ./src/sh/000001-000019-000069-g45-01.sh
sbatch ./src/sh/000001-000001-000003-g45-01.sh
sbatch ./src/sh/000001-000016-000083-g45-01.sh
sbatch ./src/sh/000001-000017-000069-g45-01.sh
sbatch ./src/sh/000001-000018-000075-g45-01.sh
sbatch ./src/sh/000001-000008-000013-g45-01.sh
sbatch ./src/sh/000001-000003-000003-g45-01.sh
sbatch ./src/sh/000001-000006-000013-g45-01.sh
sbatch ./src/sh/000001-000012-000098-g45-01.sh
sbatch ./src/sh/000001-000004-000005-g45-01.sh
sbatch ./src/sh/000001-000009-000086-g45-01.sh
sbatch ./src/sh/000001-000015-000099-g45-01.sh
sbatch ./src/sh/000001-000005-000013-g45-01.sh
sbatch ./src/sh/000001-000011-000098-g45-01.sh
sbatch ./src/sh/000001-000000-000005-g45-01.sh
sleep 600