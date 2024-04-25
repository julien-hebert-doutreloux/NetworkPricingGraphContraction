#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000069-g30-05.sh
sbatch ./src/sh/000001-000099-g30-05.sh
sbatch ./src/sh/000001-000093-g30-05.sh
sbatch ./src/sh/000001-000090-g30-05.sh
sbatch ./src/sh/000001-000096-g30-05.sh
sbatch ./src/sh/000001-000071-g30-05.sh
sbatch ./src/sh/000001-000070-g30-05.sh
sbatch ./src/sh/000001-000074-g30-05.sh
sbatch ./src/sh/000001-000076-g30-05.sh
sbatch ./src/sh/000001-000002-g30-05.sh
sleep 60