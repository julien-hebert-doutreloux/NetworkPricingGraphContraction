#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000010-000076-d35-01.sh
sbatch ./src/sh/000001-000008-000092-d35-01.sh
sbatch ./src/sh/000001-000018-000099-d35-01.sh
sbatch ./src/sh/000001-000005-000098-d35-01.sh
sbatch ./src/sh/000001-000002-000099-d35-01.sh
sbatch ./src/sh/000001-000000-000088-d35-01.sh
sbatch ./src/sh/000001-000016-000099-d35-01.sh
sbatch ./src/sh/000001-000001-000097-d35-01.sh
sbatch ./src/sh/000001-000009-000074-d35-01.sh
sbatch ./src/sh/000001-000023-000097-d35-01.sh
sbatch ./src/sh/000001-000020-000099-d35-01.sh
sbatch ./src/sh/000001-000024-000095-d35-01.sh
sbatch ./src/sh/000001-000015-000099-d35-01.sh
sbatch ./src/sh/000001-000006-000099-d35-01.sh
sbatch ./src/sh/000001-000017-000099-d35-01.sh
sbatch ./src/sh/000001-000003-000099-d35-01.sh
sbatch ./src/sh/000001-000011-000071-d35-01.sh
sbatch ./src/sh/000001-000019-000099-d35-01.sh
sbatch ./src/sh/000001-000004-000099-d35-01.sh
sbatch ./src/sh/000001-000025-000098-d35-01.sh
sbatch ./src/sh/000001-000007-000098-d35-01.sh
sbatch ./src/sh/000001-000012-000070-d35-01.sh
sbatch ./src/sh/000001-000014-000099-d35-01.sh
sbatch ./src/sh/000001-000013-000099-d35-01.sh
sbatch ./src/sh/000001-000021-000099-d35-01.sh
sbatch ./src/sh/000001-000022-000097-d35-01.sh
sleep 600