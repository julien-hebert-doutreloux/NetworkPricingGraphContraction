#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000090-d35-01.sh
sbatch ./src/sh/000001-000095-d35-01.sh
sbatch ./src/sh/000001-000097-d35-01.sh
sbatch ./src/sh/000001-000098-d35-01.sh
sbatch ./src/sh/000001-000099-d35-01.sh
sbatch ./src/sh/000001-000089-d35-01.sh
sbatch ./src/sh/000001-000072-d35-01.sh
sbatch ./src/sh/000001-000074-d35-01.sh
sbatch ./src/sh/000001-000075-d35-01.sh
sleep 300