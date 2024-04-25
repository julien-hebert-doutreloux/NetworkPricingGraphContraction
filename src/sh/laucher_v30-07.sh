#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000013-v30-07.sh
sbatch ./src/sh/000001-000099-v30-07.sh
sbatch ./src/sh/000001-000014-v30-07.sh
sbatch ./src/sh/000001-000098-v30-07.sh
sbatch ./src/sh/000001-000096-v30-07.sh
sbatch ./src/sh/000001-000084-v30-07.sh
sbatch ./src/sh/000001-000082-v30-07.sh
sbatch ./src/sh/000001-000005-v30-07.sh
sbatch ./src/sh/000001-000089-v30-07.sh
sbatch ./src/sh/000001-000088-v30-07.sh
sbatch ./src/sh/000001-000003-v30-07.sh
sleep 600