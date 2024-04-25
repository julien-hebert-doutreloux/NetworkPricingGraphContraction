#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000053-h35-10.sh
sbatch ./src/sh/000001-000079-h35-10.sh
sbatch ./src/sh/000001-000052-h35-10.sh
sbatch ./src/sh/000001-000088-h35-10.sh
sbatch ./src/sh/000001-000056-h35-10.sh
sbatch ./src/sh/000001-000089-h35-10.sh
sbatch ./src/sh/000001-000054-h35-10.sh
sbatch ./src/sh/000001-000055-h35-10.sh
sbatch ./src/sh/000001-000081-h35-10.sh
sbatch ./src/sh/000001-000085-h35-10.sh
sbatch ./src/sh/000001-000095-h35-10.sh
sbatch ./src/sh/000001-000094-h35-10.sh
sbatch ./src/sh/000001-000096-h35-10.sh
sbatch ./src/sh/000001-000093-h35-10.sh
sbatch ./src/sh/000001-000099-h35-10.sh
sleep 300