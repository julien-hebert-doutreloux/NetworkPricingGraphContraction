#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000036-d30-06.sh
sbatch ./src/sh/000001-000096-d30-06.sh
sbatch ./src/sh/000001-000049-d30-06.sh
sbatch ./src/sh/000001-000030-d30-06.sh
sbatch ./src/sh/000001-000032-d30-06.sh
sbatch ./src/sh/000001-000033-d30-06.sh
sbatch ./src/sh/000001-000019-d30-06.sh
sbatch ./src/sh/000001-000046-d30-06.sh
sbatch ./src/sh/000001-000099-d30-06.sh
sbatch ./src/sh/000001-000014-d30-06.sh
sbatch ./src/sh/000001-000054-d30-06.sh
sbatch ./src/sh/000001-000005-d30-06.sh
sbatch ./src/sh/000001-000051-d30-06.sh
sleep 60