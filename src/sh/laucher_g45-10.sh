#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000032-g45-10.sh
sbatch ./src/sh/000001-000096-g45-10.sh
sbatch ./src/sh/000001-000097-g45-10.sh
sbatch ./src/sh/000001-000062-g45-10.sh
sbatch ./src/sh/000001-000092-g45-10.sh
sbatch ./src/sh/000001-000066-g45-10.sh
sbatch ./src/sh/000001-000074-g45-10.sh
sbatch ./src/sh/000001-000059-g45-10.sh
sbatch ./src/sh/000001-000072-g45-10.sh
sbatch ./src/sh/000001-000085-g45-10.sh
sbatch ./src/sh/000001-000070-g45-10.sh
sbatch ./src/sh/000001-000071-g45-10.sh
sleep 600