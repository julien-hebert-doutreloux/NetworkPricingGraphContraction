#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000076-d35-03.sh
sbatch ./src/sh/000001-000083-d35-03.sh
sbatch ./src/sh/000001-000055-d35-03.sh
sbatch ./src/sh/000001-000099-d35-03.sh
sbatch ./src/sh/000001-000098-d35-03.sh
sbatch ./src/sh/000001-000097-d35-03.sh
sbatch ./src/sh/000001-000062-d35-03.sh
sbatch ./src/sh/000001-000096-d35-03.sh
sbatch ./src/sh/000001-000094-d35-03.sh
sbatch ./src/sh/000001-000095-d35-03.sh
sbatch ./src/sh/000001-000065-d35-03.sh
sbatch ./src/sh/000001-000066-d35-03.sh
sleep 600