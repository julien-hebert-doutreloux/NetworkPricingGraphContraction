#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000000-000002-v45-01.sh
sbatch ./src/sh/000001-000011-000099-v45-01.sh
sbatch ./src/sh/000001-000005-000099-v45-01.sh
sbatch ./src/sh/000001-000012-000096-v45-01.sh
sbatch ./src/sh/000001-000003-000002-v45-01.sh
sbatch ./src/sh/000001-000006-000099-v45-01.sh
sbatch ./src/sh/000001-000008-000099-v45-01.sh
sbatch ./src/sh/000001-000004-000098-v45-01.sh
sbatch ./src/sh/000001-000016-000084-v45-01.sh
sbatch ./src/sh/000001-000010-000099-v45-01.sh
sbatch ./src/sh/000001-000013-000092-v45-01.sh
sbatch ./src/sh/000001-000001-000002-v45-01.sh
sbatch ./src/sh/000001-000014-000092-v45-01.sh
sbatch ./src/sh/000001-000009-000099-v45-01.sh
sbatch ./src/sh/000001-000007-000099-v45-01.sh
sbatch ./src/sh/000001-000002-000002-v45-01.sh
sbatch ./src/sh/000001-000015-000083-v45-01.sh
sleep 600