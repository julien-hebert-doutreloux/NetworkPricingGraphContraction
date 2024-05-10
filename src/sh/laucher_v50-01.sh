#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000007-000099-v50-01.sh
sbatch ./src/sh/000001-000000-000098-v50-01.sh
sbatch ./src/sh/000001-000010-000091-v50-01.sh
sbatch ./src/sh/000001-000003-000099-v50-01.sh
sbatch ./src/sh/000001-000004-000099-v50-01.sh
sbatch ./src/sh/000001-000009-000092-v50-01.sh
sbatch ./src/sh/000001-000011-000091-v50-01.sh
sbatch ./src/sh/000001-000001-000099-v50-01.sh
sbatch ./src/sh/000001-000006-000099-v50-01.sh
sbatch ./src/sh/000001-000012-000092-v50-01.sh
sbatch ./src/sh/000001-000008-000095-v50-01.sh
sbatch ./src/sh/000001-000005-000099-v50-01.sh
sbatch ./src/sh/000001-000002-000099-v50-01.sh
sleep 600