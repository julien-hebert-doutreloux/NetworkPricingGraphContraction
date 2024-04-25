#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000085-v30-08.sh
sbatch ./src/sh/000001-000087-v30-08.sh
sbatch ./src/sh/000001-000086-v30-08.sh
sbatch ./src/sh/000001-000003-v30-08.sh
sbatch ./src/sh/000001-000005-v30-08.sh
sbatch ./src/sh/000001-000099-v30-08.sh
sbatch ./src/sh/000001-000014-v30-08.sh
sbatch ./src/sh/000001-000098-v30-08.sh
sbatch ./src/sh/000001-000094-v30-08.sh
sleep 300