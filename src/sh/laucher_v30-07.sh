#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000010-000098-v30-07.sh
sbatch ./src/sh/000001-000009-000097-v30-07.sh
sbatch ./src/sh/000001-000001-000003-v30-07.sh
sbatch ./src/sh/000001-000020-000088-v30-07.sh
sbatch ./src/sh/000001-000007-000014-v30-07.sh
sbatch ./src/sh/000001-000013-000099-v30-07.sh
sbatch ./src/sh/000001-000017-000094-v30-07.sh
sbatch ./src/sh/000001-000014-000099-v30-07.sh
sbatch ./src/sh/000001-000019-000093-v30-07.sh
sbatch ./src/sh/000001-000002-000003-v30-07.sh
sbatch ./src/sh/000001-000005-000013-v30-07.sh
sbatch ./src/sh/000001-000011-000099-v30-07.sh
sbatch ./src/sh/000001-000000-000005-v30-07.sh
sbatch ./src/sh/000001-000016-000099-v30-07.sh
sbatch ./src/sh/000001-000003-000003-v30-07.sh
sbatch ./src/sh/000001-000021-000086-v30-07.sh
sbatch ./src/sh/000001-000015-000099-v30-07.sh
sbatch ./src/sh/000001-000004-000005-v30-07.sh
sbatch ./src/sh/000001-000012-000099-v30-07.sh
sbatch ./src/sh/000001-000018-000097-v30-07.sh
sbatch ./src/sh/000001-000008-000014-v30-07.sh
sbatch ./src/sh/000001-000006-000014-v30-07.sh
sleep 600