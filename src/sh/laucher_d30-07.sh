#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000003-000095-d30-07.sh
sbatch ./src/sh/000001-000005-000089-d30-07.sh
sbatch ./src/sh/000001-000014-000099-d30-07.sh
sbatch ./src/sh/000001-000013-000099-d30-07.sh
sbatch ./src/sh/000001-000021-000099-d30-07.sh
sbatch ./src/sh/000001-000022-000097-d30-07.sh
sbatch ./src/sh/000001-000025-000096-d30-07.sh
sbatch ./src/sh/000001-000017-000099-d30-07.sh
sbatch ./src/sh/000001-000019-000099-d30-07.sh
sbatch ./src/sh/000001-000004-000099-d30-07.sh
sbatch ./src/sh/000001-000000-000065-d30-07.sh
sbatch ./src/sh/000001-000011-000067-d30-07.sh
sbatch ./src/sh/000001-000024-000096-d30-07.sh
sbatch ./src/sh/000001-000023-000095-d30-07.sh
sbatch ./src/sh/000001-000020-000099-d30-07.sh
sbatch ./src/sh/000001-000015-000099-d30-07.sh
sbatch ./src/sh/000001-000007-000087-d30-07.sh
sbatch ./src/sh/000001-000006-000098-d30-07.sh
sbatch ./src/sh/000001-000002-000094-d30-07.sh
sbatch ./src/sh/000001-000001-000093-d30-07.sh
sbatch ./src/sh/000001-000008-000064-d30-07.sh
sbatch ./src/sh/000001-000009-000052-d30-07.sh
sbatch ./src/sh/000001-000012-000062-d30-07.sh
sbatch ./src/sh/000001-000018-000099-d30-07.sh
sbatch ./src/sh/000001-000010-000058-d30-07.sh
sbatch ./src/sh/000001-000016-000099-d30-07.sh
sleep 600