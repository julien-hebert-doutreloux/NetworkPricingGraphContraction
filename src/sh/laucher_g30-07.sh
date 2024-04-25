#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000070-g30-07.sh
sbatch ./src/sh/000001-000002-g30-07.sh
sbatch ./src/sh/000001-000079-g30-07.sh
sbatch ./src/sh/000001-000078-g30-07.sh
sbatch ./src/sh/000001-000098-g30-07.sh
sbatch ./src/sh/000001-000099-g30-07.sh
sbatch ./src/sh/000001-000069-g30-07.sh
sbatch ./src/sh/000001-000095-g30-07.sh
sbatch ./src/sh/000001-000094-g30-07.sh
sbatch ./src/sh/000001-000096-g30-07.sh
sbatch ./src/sh/000001-000062-g30-07.sh
sleep 60