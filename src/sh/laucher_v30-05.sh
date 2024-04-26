#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000012-000099-v30-05.sh
sbatch ./src/sh/000001-000015-000099-v30-05.sh
sbatch ./src/sh/000001-000007-000024-v30-05.sh
sbatch ./src/sh/000001-000001-000010-v30-05.sh
sbatch ./src/sh/000001-000021-000086-v30-05.sh
sbatch ./src/sh/000001-000018-000098-v30-05.sh
sbatch ./src/sh/000001-000016-000099-v30-05.sh
sbatch ./src/sh/000001-000020-000091-v30-05.sh
sbatch ./src/sh/000001-000011-000099-v30-05.sh
sbatch ./src/sh/000001-000005-000012-v30-05.sh
sbatch ./src/sh/000001-000009-000029-v30-05.sh
sbatch ./src/sh/000001-000008-000025-v30-05.sh
sbatch ./src/sh/000001-000000-000012-v30-05.sh
sbatch ./src/sh/000001-000002-000003-v30-05.sh
sbatch ./src/sh/000001-000019-000095-v30-05.sh
sbatch ./src/sh/000001-000006-000020-v30-05.sh
sbatch ./src/sh/000001-000014-000099-v30-05.sh
sbatch ./src/sh/000001-000022-000090-v30-05.sh
sbatch ./src/sh/000001-000013-000099-v30-05.sh
sbatch ./src/sh/000001-000003-000011-v30-05.sh
sbatch ./src/sh/000001-000004-000011-v30-05.sh
sbatch ./src/sh/000001-000010-000099-v30-05.sh
sbatch ./src/sh/000001-000017-000099-v30-05.sh
sleep 600