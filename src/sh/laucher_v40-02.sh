#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000013-v40-02.sh
sbatch ./src/sh/000001-000014-v40-02.sh
sbatch ./src/sh/000001-000099-v40-02.sh
sbatch ./src/sh/000001-000092-v40-02.sh
sbatch ./src/sh/000001-000093-v40-02.sh
sbatch ./src/sh/000001-000095-v40-02.sh
sbatch ./src/sh/000001-000097-v40-02.sh
sbatch ./src/sh/000001-000088-v40-02.sh
sbatch ./src/sh/000001-000005-v40-02.sh
sbatch ./src/sh/000001-000003-v40-02.sh
sleep 300