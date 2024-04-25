#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000013-h30-01.sh
sbatch ./src/sh/000001-000099-h30-01.sh
sbatch ./src/sh/000001-000014-h30-01.sh
sbatch ./src/sh/000001-000098-h30-01.sh
sbatch ./src/sh/000001-000037-h30-01.sh
sbatch ./src/sh/000001-000034-h30-01.sh
sbatch ./src/sh/000001-000097-h30-01.sh
sbatch ./src/sh/000001-000030-h30-01.sh
sbatch ./src/sh/000001-000096-h30-01.sh
sbatch ./src/sh/000001-000094-h30-01.sh
sbatch ./src/sh/000001-000019-h30-01.sh
sbatch ./src/sh/000001-000095-h30-01.sh
sbatch ./src/sh/000001-000005-h30-01.sh
sbatch ./src/sh/000001-000029-h30-01.sh
sleep 300