#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000006-000018-h30-01.sh
sbatch ./src/sh/000001-000001-000019-h30-01.sh
sbatch ./src/sh/000001-000002-000014-h30-01.sh
sbatch ./src/sh/000001-000012-000097-h30-01.sh
sbatch ./src/sh/000001-000018-000099-h30-01.sh
sbatch ./src/sh/000001-000008-000032-h30-01.sh
sbatch ./src/sh/000001-000016-000099-h30-01.sh
sbatch ./src/sh/000001-000015-000099-h30-01.sh
sbatch ./src/sh/000001-000023-000090-h30-01.sh
sbatch ./src/sh/000001-000003-000005-h30-01.sh
sbatch ./src/sh/000001-000024-000093-h30-01.sh
sbatch ./src/sh/000001-000011-000034-h30-01.sh
sbatch ./src/sh/000001-000020-000098-h30-01.sh
sbatch ./src/sh/000001-000021-000094-h30-01.sh
sbatch ./src/sh/000001-000009-000036-h30-01.sh
sbatch ./src/sh/000001-000017-000099-h30-01.sh
sbatch ./src/sh/000001-000019-000099-h30-01.sh
sbatch ./src/sh/000001-000010-000034-h30-01.sh
sbatch ./src/sh/000001-000022-000097-h30-01.sh
sbatch ./src/sh/000001-000007-000014-h30-01.sh
sbatch ./src/sh/000001-000000-000014-h30-01.sh
sbatch ./src/sh/000001-000004-000019-h30-01.sh
sbatch ./src/sh/000001-000013-000099-h30-01.sh
sbatch ./src/sh/000001-000014-000099-h30-01.sh
sbatch ./src/sh/000001-000005-000005-h30-01.sh
sleep 600