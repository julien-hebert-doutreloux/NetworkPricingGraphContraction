#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000006-000013-g30-03.sh
sbatch ./src/sh/000001-000016-000090-g30-03.sh
sbatch ./src/sh/000001-000009-000083-g30-03.sh
sbatch ./src/sh/000001-000003-000003-g30-03.sh
sbatch ./src/sh/000001-000012-000099-g30-03.sh
sbatch ./src/sh/000001-000008-000014-g30-03.sh
sbatch ./src/sh/000001-000015-000098-g30-03.sh
sbatch ./src/sh/000001-000004-000005-g30-03.sh
sbatch ./src/sh/000001-000019-000077-g30-03.sh
sbatch ./src/sh/000001-000011-000099-g30-03.sh
sbatch ./src/sh/000001-000000-000005-g30-03.sh
sbatch ./src/sh/000001-000005-000014-g30-03.sh
sbatch ./src/sh/000001-000020-000067-g30-03.sh
sbatch ./src/sh/000001-000013-000099-g30-03.sh
sbatch ./src/sh/000001-000017-000061-g30-03.sh
sbatch ./src/sh/000001-000007-000014-g30-03.sh
sbatch ./src/sh/000001-000010-000096-g30-03.sh
sbatch ./src/sh/000001-000002-000003-g30-03.sh
sbatch ./src/sh/000001-000018-000070-g30-03.sh
sbatch ./src/sh/000001-000014-000095-g30-03.sh
sbatch ./src/sh/000001-000021-000060-g30-03.sh
sbatch ./src/sh/000001-000001-000003-g30-03.sh
sleep 600