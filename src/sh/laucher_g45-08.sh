#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000022-000081-g45-08.sh
sbatch ./src/sh/000001-000019-000072-g45-08.sh
sbatch ./src/sh/000001-000016-000099-g45-08.sh
sbatch ./src/sh/000001-000005-000012-g45-08.sh
sbatch ./src/sh/000001-000012-000099-g45-08.sh
sbatch ./src/sh/000001-000015-000098-g45-08.sh
sbatch ./src/sh/000001-000011-000097-g45-08.sh
sbatch ./src/sh/000001-000009-000023-g45-08.sh
sbatch ./src/sh/000001-000007-000024-g45-08.sh
sbatch ./src/sh/000001-000021-000071-g45-08.sh
sbatch ./src/sh/000001-000001-000011-g45-08.sh
sbatch ./src/sh/000001-000004-000011-g45-08.sh
sbatch ./src/sh/000001-000003-000011-g45-08.sh
sbatch ./src/sh/000001-000018-000070-g45-08.sh
sbatch ./src/sh/000001-000006-000026-g45-08.sh
sbatch ./src/sh/000001-000000-000011-g45-08.sh
sbatch ./src/sh/000001-000017-000093-g45-08.sh
sbatch ./src/sh/000001-000008-000027-g45-08.sh
sbatch ./src/sh/000001-000002-000003-g45-08.sh
sbatch ./src/sh/000001-000010-000095-g45-08.sh
sbatch ./src/sh/000001-000013-000099-g45-08.sh
sbatch ./src/sh/000001-000014-000099-g45-08.sh
sbatch ./src/sh/000001-000020-000083-g45-08.sh
sleep 600