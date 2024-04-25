#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000005-h35-04.sh
sbatch ./src/sh/000001-000088-h35-04.sh
sbatch ./src/sh/000001-000099-h35-04.sh
sbatch ./src/sh/000001-000014-h35-04.sh
sbatch ./src/sh/000001-000038-h35-04.sh
sbatch ./src/sh/000001-000096-h35-04.sh
sbatch ./src/sh/000001-000032-h35-04.sh
sbatch ./src/sh/000001-000094-h35-04.sh
sbatch ./src/sh/000001-000019-h35-04.sh
sbatch ./src/sh/000001-000033-h35-04.sh
sbatch ./src/sh/000001-000092-h35-04.sh
sleep 600