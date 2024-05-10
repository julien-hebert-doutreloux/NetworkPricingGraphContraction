#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000005-000088-g45-10.sh
sbatch ./src/sh/000001-000010-000062-g45-10.sh
sbatch ./src/sh/000001-000007-000068-g45-10.sh
sbatch ./src/sh/000001-000006-000080-g45-10.sh
sbatch ./src/sh/000001-000003-000098-g45-10.sh
sbatch ./src/sh/000001-000012-000051-g45-10.sh
sbatch ./src/sh/000001-000000-000082-g45-10.sh
sbatch ./src/sh/000001-000002-000095-g45-10.sh
sbatch ./src/sh/000001-000011-000063-g45-10.sh
sbatch ./src/sh/000001-000008-000047-g45-10.sh
sbatch ./src/sh/000001-000009-000072-g45-10.sh
sbatch ./src/sh/000001-000004-000027-g45-10.sh
sbatch ./src/sh/000001-000001-000092-g45-10.sh
sleep 600