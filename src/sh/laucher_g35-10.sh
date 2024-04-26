#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000001-000002-g35-10.sh
sbatch ./src/sh/000001-000015-000053-g35-10.sh
sbatch ./src/sh/000001-000016-000059-g35-10.sh
sbatch ./src/sh/000001-000002-000002-g35-10.sh
sbatch ./src/sh/000001-000011-000079-g35-10.sh
sbatch ./src/sh/000001-000007-000098-g35-10.sh
sbatch ./src/sh/000001-000010-000094-g35-10.sh
sbatch ./src/sh/000001-000005-000099-g35-10.sh
sbatch ./src/sh/000001-000008-000096-g35-10.sh
sbatch ./src/sh/000001-000012-000062-g35-10.sh
sbatch ./src/sh/000001-000000-000002-g35-10.sh
sbatch ./src/sh/000001-000013-000079-g35-10.sh
sbatch ./src/sh/000001-000004-000089-g35-10.sh
sbatch ./src/sh/000001-000009-000086-g35-10.sh
sbatch ./src/sh/000001-000014-000072-g35-10.sh
sbatch ./src/sh/000001-000006-000099-g35-10.sh
sbatch ./src/sh/000001-000003-000002-g35-10.sh
sleep 600