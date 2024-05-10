#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000010-000099-g30-05.sh
sbatch ./src/sh/000001-000009-000091-g30-05.sh
sbatch ./src/sh/000001-000001-000002-g30-05.sh
sbatch ./src/sh/000001-000015-000072-g30-05.sh
sbatch ./src/sh/000001-000007-000099-g30-05.sh
sbatch ./src/sh/000001-000002-000002-g30-05.sh
sbatch ./src/sh/000001-000000-000002-g30-05.sh
sbatch ./src/sh/000001-000014-000078-g30-05.sh
sbatch ./src/sh/000001-000008-000097-g30-05.sh
sbatch ./src/sh/000001-000004-000087-g30-05.sh
sbatch ./src/sh/000001-000012-000062-g30-05.sh
sbatch ./src/sh/000001-000005-000099-g30-05.sh
sbatch ./src/sh/000001-000013-000076-g30-05.sh
sbatch ./src/sh/000001-000016-000065-g30-05.sh
sbatch ./src/sh/000001-000003-000002-g30-05.sh
sbatch ./src/sh/000001-000006-000099-g30-05.sh
sbatch ./src/sh/000001-000011-000094-g30-05.sh
sleep 600