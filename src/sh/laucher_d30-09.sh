#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000007-000098-d30-09.sh
sbatch ./src/sh/000001-000014-000099-d30-09.sh
sbatch ./src/sh/000001-000013-000099-d30-09.sh
sbatch ./src/sh/000001-000021-000099-d30-09.sh
sbatch ./src/sh/000001-000009-000069-d30-09.sh
sbatch ./src/sh/000001-000022-000096-d30-09.sh
sbatch ./src/sh/000001-000010-000067-d30-09.sh
sbatch ./src/sh/000001-000017-000099-d30-09.sh
sbatch ./src/sh/000001-000008-000088-d30-09.sh
sbatch ./src/sh/000001-000003-000099-d30-09.sh
sbatch ./src/sh/000001-000011-000071-d30-09.sh
sbatch ./src/sh/000001-000019-000099-d30-09.sh
sbatch ./src/sh/000001-000004-000099-d30-09.sh
sbatch ./src/sh/000001-000025-000099-d30-09.sh
sbatch ./src/sh/000001-000023-000096-d30-09.sh
sbatch ./src/sh/000001-000024-000096-d30-09.sh
sbatch ./src/sh/000001-000020-000099-d30-09.sh
sbatch ./src/sh/000001-000005-000097-d30-09.sh
sbatch ./src/sh/000001-000015-000099-d30-09.sh
sbatch ./src/sh/000001-000001-000098-d30-09.sh
sbatch ./src/sh/000001-000006-000099-d30-09.sh
sbatch ./src/sh/000001-000012-000065-d30-09.sh
sbatch ./src/sh/000001-000018-000099-d30-09.sh
sbatch ./src/sh/000001-000002-000099-d30-09.sh
sbatch ./src/sh/000001-000016-000099-d30-09.sh
sbatch ./src/sh/000001-000000-000089-d30-09.sh
sleep 600