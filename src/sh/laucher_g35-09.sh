#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000000-000076-g35-09.sh
sbatch ./src/sh/000001-000005-000091-g35-09.sh
sbatch ./src/sh/000001-000006-000098-g35-09.sh
sbatch ./src/sh/000001-000012-000064-g35-09.sh
sbatch ./src/sh/000001-000001-000095-g35-09.sh
sbatch ./src/sh/000001-000002-000098-g35-09.sh
sbatch ./src/sh/000001-000004-000097-g35-09.sh
sbatch ./src/sh/000001-000003-000096-g35-09.sh
sbatch ./src/sh/000001-000010-000064-g35-09.sh
sbatch ./src/sh/000001-000008-000074-g35-09.sh
sbatch ./src/sh/000001-000011-000058-g35-09.sh
sbatch ./src/sh/000001-000007-000090-g35-09.sh
sbatch ./src/sh/000001-000009-000065-g35-09.sh
sleep 600