#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000000-000075-d30-08.sh
sbatch ./src/sh/000001-000008-000069-d30-08.sh
sbatch ./src/sh/000001-000006-000098-d30-08.sh
sbatch ./src/sh/000001-000001-000096-d30-08.sh
sbatch ./src/sh/000001-000009-000055-d30-08.sh
sbatch ./src/sh/000001-000007-000089-d30-08.sh
sbatch ./src/sh/000001-000002-000098-d30-08.sh
sbatch ./src/sh/000001-000005-000088-d30-08.sh
sbatch ./src/sh/000001-000003-000097-d30-08.sh
sbatch ./src/sh/000001-000004-000099-d30-08.sh
sleep 600