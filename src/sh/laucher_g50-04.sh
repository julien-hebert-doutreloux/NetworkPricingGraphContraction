#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000018-000058-g50-04.sh
sbatch ./src/sh/000001-000004-000011-g50-04.sh
sbatch ./src/sh/000001-000003-000011-g50-04.sh
sbatch ./src/sh/000001-000014-000066-g50-04.sh
sbatch ./src/sh/000001-000013-000099-g50-04.sh
sbatch ./src/sh/000001-000008-000021-g50-04.sh
sbatch ./src/sh/000001-000020-000076-g50-04.sh
sbatch ./src/sh/000001-000000-000012-g50-04.sh
sbatch ./src/sh/000001-000006-000024-g50-04.sh
sbatch ./src/sh/000001-000002-000003-g50-04.sh
sbatch ./src/sh/000001-000017-000092-g50-04.sh
sbatch ./src/sh/000001-000005-000012-g50-04.sh
sbatch ./src/sh/000001-000019-000077-g50-04.sh
sbatch ./src/sh/000001-000012-000096-g50-04.sh
sbatch ./src/sh/000001-000010-000084-g50-04.sh
sbatch ./src/sh/000001-000022-000080-g50-04.sh
sbatch ./src/sh/000001-000015-000094-g50-04.sh
sbatch ./src/sh/000001-000011-000098-g50-04.sh
sbatch ./src/sh/000001-000009-000027-g50-04.sh
sbatch ./src/sh/000001-000001-000011-g50-04.sh
sbatch ./src/sh/000001-000021-000076-g50-04.sh
sbatch ./src/sh/000001-000016-000096-g50-04.sh
sbatch ./src/sh/000001-000007-000021-g50-04.sh
sleep 600