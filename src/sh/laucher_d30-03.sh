#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000069-d30-03.sh
sbatch ./src/sh/000001-000098-d30-03.sh
sbatch ./src/sh/000001-000099-d30-03.sh
sbatch ./src/sh/000001-000092-d30-03.sh
sbatch ./src/sh/000001-000090-d30-03.sh
sbatch ./src/sh/000001-000061-d30-03.sh
sbatch ./src/sh/000001-000096-d30-03.sh
sbatch ./src/sh/000001-000097-d30-03.sh
sbatch ./src/sh/000001-000073-d30-03.sh
sbatch ./src/sh/000001-000058-d30-03.sh
sbatch ./src/sh/000001-000085-d30-03.sh
sbatch ./src/sh/000001-000070-d30-03.sh
sleep 60