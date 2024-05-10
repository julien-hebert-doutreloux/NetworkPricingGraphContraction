#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000012-000064-d35-09.sh
sbatch ./src/sh/000001-000000-000078-d35-09.sh
sbatch ./src/sh/000001-000001-000095-d35-09.sh
sbatch ./src/sh/000001-000011-000064-d35-09.sh
sbatch ./src/sh/000001-000006-000098-d35-09.sh
sbatch ./src/sh/000001-000002-000097-d35-09.sh
sbatch ./src/sh/000001-000005-000097-d35-09.sh
sbatch ./src/sh/000001-000004-000099-d35-09.sh
sbatch ./src/sh/000001-000003-000099-d35-09.sh
sbatch ./src/sh/000001-000007-000097-d35-09.sh
sbatch ./src/sh/000001-000009-000066-d35-09.sh
sbatch ./src/sh/000001-000010-000063-d35-09.sh
sbatch ./src/sh/000001-000008-000083-d35-09.sh
sleep 600