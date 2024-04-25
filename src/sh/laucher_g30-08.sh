#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000098-g30-08.sh
sbatch ./src/sh/000001-000099-g30-08.sh
sbatch ./src/sh/000001-000068-g30-08.sh
sbatch ./src/sh/000001-000095-g30-08.sh
sbatch ./src/sh/000001-000097-g30-08.sh
sbatch ./src/sh/000001-000065-g30-08.sh
sbatch ./src/sh/000001-000075-g30-08.sh
sbatch ./src/sh/000001-000072-g30-08.sh
sbatch ./src/sh/000001-000070-g30-08.sh
sbatch ./src/sh/000001-000085-g30-08.sh
sbatch ./src/sh/000001-000089-g30-08.sh
sleep 300