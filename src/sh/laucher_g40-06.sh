#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000007-000040-g40-06.sh
sbatch ./src/sh/000001-000008-000025-g40-06.sh
sbatch ./src/sh/000001-000025-000066-g40-06.sh
sbatch ./src/sh/000001-000009-000045-g40-06.sh
sbatch ./src/sh/000001-000002-000054-g40-06.sh
sbatch ./src/sh/000001-000019-000097-g40-06.sh
sbatch ./src/sh/000001-000014-000098-g40-06.sh
sbatch ./src/sh/000001-000023-000072-g40-06.sh
sbatch ./src/sh/000001-000010-000042-g40-06.sh
sbatch ./src/sh/000001-000017-000099-g40-06.sh
sbatch ./src/sh/000001-000003-000047-g40-06.sh
sbatch ./src/sh/000001-000001-000045-g40-06.sh
sbatch ./src/sh/000001-000005-000048-g40-06.sh
sbatch ./src/sh/000001-000013-000086-g40-06.sh
sbatch ./src/sh/000001-000015-000098-g40-06.sh
sbatch ./src/sh/000001-000004-000007-g40-06.sh
sbatch ./src/sh/000001-000018-000091-g40-06.sh
sbatch ./src/sh/000001-000024-000063-g40-06.sh
sbatch ./src/sh/000001-000012-000041-g40-06.sh
sbatch ./src/sh/000001-000021-000072-g40-06.sh
sbatch ./src/sh/000001-000006-000041-g40-06.sh
sbatch ./src/sh/000001-000000-000027-g40-06.sh
sbatch ./src/sh/000001-000022-000074-g40-06.sh
sbatch ./src/sh/000001-000011-000045-g40-06.sh
sbatch ./src/sh/000001-000016-000099-g40-06.sh
sbatch ./src/sh/000001-000020-000090-g40-06.sh
sleep 600