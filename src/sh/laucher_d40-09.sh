#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000010-000069-d40-09.sh
sbatch ./src/sh/000001-000022-000098-d40-09.sh
sbatch ./src/sh/000001-000007-000097-d40-09.sh
sbatch ./src/sh/000001-000017-000099-d40-09.sh
sbatch ./src/sh/000001-000003-000099-d40-09.sh
sbatch ./src/sh/000001-000004-000099-d40-09.sh
sbatch ./src/sh/000001-000019-000099-d40-09.sh
sbatch ./src/sh/000001-000025-000095-d40-09.sh
sbatch ./src/sh/000001-000008-000082-d40-09.sh
sbatch ./src/sh/000001-000009-000068-d40-09.sh
sbatch ./src/sh/000001-000021-000099-d40-09.sh
sbatch ./src/sh/000001-000014-000099-d40-09.sh
sbatch ./src/sh/000001-000013-000099-d40-09.sh
sbatch ./src/sh/000001-000018-000099-d40-09.sh
sbatch ./src/sh/000001-000012-000062-d40-09.sh
sbatch ./src/sh/000001-000002-000099-d40-09.sh
sbatch ./src/sh/000001-000001-000095-d40-09.sh
sbatch ./src/sh/000001-000016-000099-d40-09.sh
sbatch ./src/sh/000001-000011-000069-d40-09.sh
sbatch ./src/sh/000001-000000-000085-d40-09.sh
sbatch ./src/sh/000001-000015-000099-d40-09.sh
sbatch ./src/sh/000001-000005-000096-d40-09.sh
sbatch ./src/sh/000001-000024-000093-d40-09.sh
sbatch ./src/sh/000001-000006-000099-d40-09.sh
sbatch ./src/sh/000001-000023-000096-d40-09.sh
sbatch ./src/sh/000001-000020-000099-d40-09.sh
sleep 600