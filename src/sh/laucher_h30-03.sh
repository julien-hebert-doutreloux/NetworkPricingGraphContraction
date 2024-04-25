#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000048-h30-03.sh
sbatch ./src/sh/000001-000096-h30-03.sh
sbatch ./src/sh/000001-000049-h30-03.sh
sbatch ./src/sh/000001-000092-h30-03.sh
sbatch ./src/sh/000001-000036-h30-03.sh
sbatch ./src/sh/000001-000044-h30-03.sh
sbatch ./src/sh/000001-000099-h30-03.sh
sbatch ./src/sh/000001-000098-h30-03.sh
sbatch ./src/sh/000001-000042-h30-03.sh
sbatch ./src/sh/000001-000043-h30-03.sh
sbatch ./src/sh/000001-000050-h30-03.sh
sbatch ./src/sh/000001-000052-h30-03.sh
sbatch ./src/sh/000001-000007-h30-03.sh
sbatch ./src/sh/000001-000026-h30-03.sh
sbatch ./src/sh/000001-000027-h30-03.sh
sleep 60