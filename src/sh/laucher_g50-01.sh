#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000092-g50-01.sh
sbatch ./src/sh/000001-000013-g50-01.sh
sbatch ./src/sh/000001-000098-g50-01.sh
sbatch ./src/sh/000001-000014-g50-01.sh
sbatch ./src/sh/000001-000099-g50-01.sh
sbatch ./src/sh/000001-000005-g50-01.sh
sbatch ./src/sh/000001-000003-g50-01.sh
sbatch ./src/sh/000001-000079-g50-01.sh
sbatch ./src/sh/000001-000072-g50-01.sh
sbatch ./src/sh/000001-000080-g50-01.sh
sbatch ./src/sh/000001-000075-g50-01.sh
sbatch ./src/sh/000001-000082-g50-01.sh
sleep 300