#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000008-000037-h30-07.sh
sbatch ./src/sh/000001-000016-000099-h30-07.sh
sbatch ./src/sh/000001-000001-000019-h30-07.sh
sbatch ./src/sh/000001-000002-000014-h30-07.sh
sbatch ./src/sh/000001-000006-000019-h30-07.sh
sbatch ./src/sh/000001-000018-000099-h30-07.sh
sbatch ./src/sh/000001-000020-000098-h30-07.sh
sbatch ./src/sh/000001-000023-000092-h30-07.sh
sbatch ./src/sh/000001-000011-000032-h30-07.sh
sbatch ./src/sh/000001-000015-000099-h30-07.sh
sbatch ./src/sh/000001-000012-000099-h30-07.sh
sbatch ./src/sh/000001-000003-000005-h30-07.sh
sbatch ./src/sh/000001-000019-000099-h30-07.sh
sbatch ./src/sh/000001-000017-000099-h30-07.sh
sbatch ./src/sh/000001-000009-000033-h30-07.sh
sbatch ./src/sh/000001-000013-000099-h30-07.sh
sbatch ./src/sh/000001-000014-000099-h30-07.sh
sbatch ./src/sh/000001-000005-000005-h30-07.sh
sbatch ./src/sh/000001-000007-000014-h30-07.sh
sbatch ./src/sh/000001-000000-000014-h30-07.sh
sbatch ./src/sh/000001-000004-000019-h30-07.sh
sbatch ./src/sh/000001-000010-000031-h30-07.sh
sbatch ./src/sh/000001-000024-000088-h30-07.sh
sbatch ./src/sh/000001-000022-000095-h30-07.sh
sbatch ./src/sh/000001-000021-000099-h30-07.sh
sleep 600