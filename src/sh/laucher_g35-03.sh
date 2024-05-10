#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000006-000013-g35-03.sh
sbatch ./src/sh/000001-000009-000082-g35-03.sh
sbatch ./src/sh/000001-000019-000078-g35-03.sh
sbatch ./src/sh/000001-000003-000003-g35-03.sh
sbatch ./src/sh/000001-000012-000099-g35-03.sh
sbatch ./src/sh/000001-000008-000014-g35-03.sh
sbatch ./src/sh/000001-000016-000094-g35-03.sh
sbatch ./src/sh/000001-000020-000069-g35-03.sh
sbatch ./src/sh/000001-000004-000005-g35-03.sh
sbatch ./src/sh/000001-000011-000098-g35-03.sh
sbatch ./src/sh/000001-000000-000005-g35-03.sh
sbatch ./src/sh/000001-000015-000096-g35-03.sh
sbatch ./src/sh/000001-000005-000014-g35-03.sh
sbatch ./src/sh/000001-000017-000060-g35-03.sh
sbatch ./src/sh/000001-000013-000099-g35-03.sh
sbatch ./src/sh/000001-000014-000098-g35-03.sh
sbatch ./src/sh/000001-000010-000097-g35-03.sh
sbatch ./src/sh/000001-000002-000003-g35-03.sh
sbatch ./src/sh/000001-000007-000013-g35-03.sh
sbatch ./src/sh/000001-000018-000072-g35-03.sh
sbatch ./src/sh/000001-000001-000003-g35-03.sh
sleep 600