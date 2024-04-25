#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000094-d35-04.sh
sbatch ./src/sh/000001-000095-d35-04.sh
sbatch ./src/sh/000001-000097-d35-04.sh
sbatch ./src/sh/000001-000049-d35-04.sh
sbatch ./src/sh/000001-000046-d35-04.sh
sbatch ./src/sh/000001-000099-d35-04.sh
sbatch ./src/sh/000001-000098-d35-04.sh
sbatch ./src/sh/000001-000089-d35-04.sh
sbatch ./src/sh/000001-000088-d35-04.sh
sbatch ./src/sh/000001-000057-d35-04.sh
sbatch ./src/sh/000001-000052-d35-04.sh
sbatch ./src/sh/000001-000078-d35-04.sh
sbatch ./src/sh/000001-000053-d35-04.sh
sbatch ./src/sh/000001-000059-d35-04.sh
sbatch ./src/sh/000001-000073-d35-04.sh
sbatch ./src/sh/000001-000085-d35-04.sh
sbatch ./src/sh/000001-000077-d35-04.sh
sleep 60