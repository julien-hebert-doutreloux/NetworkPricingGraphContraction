#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000025-000085-h30-03.sh
sbatch ./src/sh/000001-000018-000099-h30-03.sh
sbatch ./src/sh/000001-000005-000046-h30-03.sh
sbatch ./src/sh/000001-000011-000045-h30-03.sh
sbatch ./src/sh/000001-000016-000099-h30-03.sh
sbatch ./src/sh/000001-000023-000097-h30-03.sh
sbatch ./src/sh/000001-000020-000099-h30-03.sh
sbatch ./src/sh/000001-000000-000026-h30-03.sh
sbatch ./src/sh/000001-000012-000046-h30-03.sh
sbatch ./src/sh/000001-000002-000049-h30-03.sh
sbatch ./src/sh/000001-000015-000099-h30-03.sh
sbatch ./src/sh/000001-000001-000044-h30-03.sh
sbatch ./src/sh/000001-000006-000047-h30-03.sh
sbatch ./src/sh/000001-000004-000007-h30-03.sh
sbatch ./src/sh/000001-000017-000099-h30-03.sh
sbatch ./src/sh/000001-000009-000048-h30-03.sh
sbatch ./src/sh/000001-000019-000099-h30-03.sh
sbatch ./src/sh/000001-000003-000042-h30-03.sh
sbatch ./src/sh/000001-000024-000086-h30-03.sh
sbatch ./src/sh/000001-000021-000094-h30-03.sh
sbatch ./src/sh/000001-000007-000046-h30-03.sh
sbatch ./src/sh/000001-000014-000099-h30-03.sh
sbatch ./src/sh/000001-000013-000098-h30-03.sh
sbatch ./src/sh/000001-000022-000094-h30-03.sh
sbatch ./src/sh/000001-000010-000037-h30-03.sh
sbatch ./src/sh/000001-000008-000025-h30-03.sh
sleep 600