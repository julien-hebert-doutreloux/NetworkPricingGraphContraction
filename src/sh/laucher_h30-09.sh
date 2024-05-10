#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000016-000099-h30-09.sh
sbatch ./src/sh/000001-000011-000046-h30-09.sh
sbatch ./src/sh/000001-000012-000048-h30-09.sh
sbatch ./src/sh/000001-000018-000099-h30-09.sh
sbatch ./src/sh/000001-000010-000051-h30-09.sh
sbatch ./src/sh/000001-000020-000099-h30-09.sh
sbatch ./src/sh/000001-000005-000066-h30-09.sh
sbatch ./src/sh/000001-000023-000094-h30-09.sh
sbatch ./src/sh/000001-000003-000079-h30-09.sh
sbatch ./src/sh/000001-000008-000039-h30-09.sh
sbatch ./src/sh/000001-000024-000092-h30-09.sh
sbatch ./src/sh/000001-000015-000099-h30-09.sh
sbatch ./src/sh/000001-000019-000099-h30-09.sh
sbatch ./src/sh/000001-000017-000099-h30-09.sh
sbatch ./src/sh/000001-000002-000084-h30-09.sh
sbatch ./src/sh/000001-000007-000063-h30-09.sh
sbatch ./src/sh/000001-000021-000094-h30-09.sh
sbatch ./src/sh/000001-000014-000099-h30-09.sh
sbatch ./src/sh/000001-000001-000071-h30-09.sh
sbatch ./src/sh/000001-000013-000099-h30-09.sh
sbatch ./src/sh/000001-000009-000045-h30-09.sh
sbatch ./src/sh/000001-000025-000093-h30-09.sh
sbatch ./src/sh/000001-000022-000092-h30-09.sh
sbatch ./src/sh/000001-000006-000082-h30-09.sh
sbatch ./src/sh/000001-000004-000067-h30-09.sh
sbatch ./src/sh/000001-000000-000039-h30-09.sh
sleep 600