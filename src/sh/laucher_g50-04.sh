#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000083-g50-04.sh
sbatch ./src/sh/000001-000024-g50-04.sh
sbatch ./src/sh/000001-000027-g50-04.sh
sbatch ./src/sh/000001-000071-g50-04.sh
sbatch ./src/sh/000001-000022-g50-04.sh
sbatch ./src/sh/000001-000072-g50-04.sh
sbatch ./src/sh/000001-000079-g50-04.sh
sbatch ./src/sh/000001-000028-g50-04.sh
sbatch ./src/sh/000001-000003-g50-04.sh
sbatch ./src/sh/000001-000012-g50-04.sh
sbatch ./src/sh/000001-000068-g50-04.sh
sbatch ./src/sh/000001-000011-g50-04.sh
sbatch ./src/sh/000001-000097-g50-04.sh
sbatch ./src/sh/000001-000096-g50-04.sh
sbatch ./src/sh/000001-000094-g50-04.sh
sbatch ./src/sh/000001-000095-g50-04.sh
sbatch ./src/sh/000001-000066-g50-04.sh
sbatch ./src/sh/000001-000092-g50-04.sh
sleep 600