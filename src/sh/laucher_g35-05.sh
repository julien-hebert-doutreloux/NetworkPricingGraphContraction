#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000000-000002-g35-05.sh
sbatch ./src/sh/000001-000016-000068-g35-05.sh
sbatch ./src/sh/000001-000005-000098-g35-05.sh
sbatch ./src/sh/000001-000015-000068-g35-05.sh
sbatch ./src/sh/000001-000014-000077-g35-05.sh
sbatch ./src/sh/000001-000012-000068-g35-05.sh
sbatch ./src/sh/000001-000011-000092-g35-05.sh
sbatch ./src/sh/000001-000003-000002-g35-05.sh
sbatch ./src/sh/000001-000006-000099-g35-05.sh
sbatch ./src/sh/000001-000013-000085-g35-05.sh
sbatch ./src/sh/000001-000008-000099-g35-05.sh
sbatch ./src/sh/000001-000010-000098-g35-05.sh
sbatch ./src/sh/000001-000009-000094-g35-05.sh
sbatch ./src/sh/000001-000001-000002-g35-05.sh
sbatch ./src/sh/000001-000007-000099-g35-05.sh
sbatch ./src/sh/000001-000004-000090-g35-05.sh
sbatch ./src/sh/000001-000002-000002-g35-05.sh
sleep 600