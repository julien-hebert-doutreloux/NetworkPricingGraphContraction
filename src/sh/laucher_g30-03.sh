#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000099-g30-03.sh
sbatch ./src/sh/000001-000098-g30-03.sh
sbatch ./src/sh/000001-000014-g30-03.sh
sbatch ./src/sh/000001-000013-g30-03.sh
sbatch ./src/sh/000001-000069-g30-03.sh
sbatch ./src/sh/000001-000063-g30-03.sh
sbatch ./src/sh/000001-000096-g30-03.sh
sbatch ./src/sh/000001-000064-g30-03.sh
sbatch ./src/sh/000001-000091-g30-03.sh
sbatch ./src/sh/000001-000092-g30-03.sh
sbatch ./src/sh/000001-000077-g30-03.sh
sbatch ./src/sh/000001-000072-g30-03.sh
sbatch ./src/sh/000001-000003-g30-03.sh
sbatch ./src/sh/000001-000005-g30-03.sh
sleep 300