#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000099-g30-02.sh
sbatch ./src/sh/000001-000014-g30-02.sh
sbatch ./src/sh/000001-000098-g30-02.sh
sbatch ./src/sh/000001-000092-g30-02.sh
sbatch ./src/sh/000001-000097-g30-02.sh
sbatch ./src/sh/000001-000076-g30-02.sh
sbatch ./src/sh/000001-000083-g30-02.sh
sbatch ./src/sh/000001-000005-g30-02.sh
sbatch ./src/sh/000001-000003-g30-02.sh
sleep 60