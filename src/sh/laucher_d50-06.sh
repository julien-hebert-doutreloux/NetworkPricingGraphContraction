#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000023-000099-d50-06.sh
sbatch ./src/sh/000001-000006-000095-d50-06.sh
sbatch ./src/sh/000001-000018-000099-d50-06.sh
sbatch ./src/sh/000001-000001-000094-d50-06.sh
sbatch ./src/sh/000001-000016-000099-d50-06.sh
sbatch ./src/sh/000001-000020-000099-d50-06.sh
sbatch ./src/sh/000001-000024-000094-d50-06.sh
sbatch ./src/sh/000001-000007-000085-d50-06.sh
sbatch ./src/sh/000001-000015-000099-d50-06.sh
sbatch ./src/sh/000001-000011-000060-d50-06.sh
sbatch ./src/sh/000001-000010-000057-d50-06.sh
sbatch ./src/sh/000001-000000-000058-d50-06.sh
sbatch ./src/sh/000001-000002-000094-d50-06.sh
sbatch ./src/sh/000001-000009-000060-d50-06.sh
sbatch ./src/sh/000001-000017-000099-d50-06.sh
sbatch ./src/sh/000001-000012-000054-d50-06.sh
sbatch ./src/sh/000001-000019-000099-d50-06.sh
sbatch ./src/sh/000001-000005-000083-d50-06.sh
sbatch ./src/sh/000001-000013-000099-d50-06.sh
sbatch ./src/sh/000001-000008-000059-d50-06.sh
sbatch ./src/sh/000001-000003-000097-d50-06.sh
sbatch ./src/sh/000001-000004-000096-d50-06.sh
sbatch ./src/sh/000001-000014-000099-d50-06.sh
sbatch ./src/sh/000001-000021-000098-d50-06.sh
sbatch ./src/sh/000001-000022-000096-d50-06.sh
sbatch ./src/sh/000001-000025-000096-d50-06.sh
sleep 600