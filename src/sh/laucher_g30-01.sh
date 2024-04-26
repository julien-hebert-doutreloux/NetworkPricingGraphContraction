#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000016-000070-g30-01.sh
sbatch ./src/sh/000001-000011-000087-g30-01.sh
sbatch ./src/sh/000001-000009-000095-g30-01.sh
sbatch ./src/sh/000001-000001-000002-g30-01.sh
sbatch ./src/sh/000001-000015-000059-g30-01.sh
sbatch ./src/sh/000001-000007-000099-g30-01.sh
sbatch ./src/sh/000001-000010-000096-g30-01.sh
sbatch ./src/sh/000001-000002-000002-g30-01.sh
sbatch ./src/sh/000001-000014-000069-g30-01.sh
sbatch ./src/sh/000001-000012-000066-g30-01.sh
sbatch ./src/sh/000001-000000-000002-g30-01.sh
sbatch ./src/sh/000001-000004-000085-g30-01.sh
sbatch ./src/sh/000001-000003-000002-g30-01.sh
sbatch ./src/sh/000001-000006-000098-g30-01.sh
sbatch ./src/sh/000001-000013-000071-g30-01.sh
sbatch ./src/sh/000001-000005-000097-g30-01.sh
sbatch ./src/sh/000001-000008-000099-g30-01.sh
sleep 600