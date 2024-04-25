#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000099-g35-02.sh
sbatch ./src/sh/000001-000060-g35-02.sh
sbatch ./src/sh/000001-000061-g35-02.sh
sbatch ./src/sh/000001-000096-g35-02.sh
sbatch ./src/sh/000001-000063-g35-02.sh
sbatch ./src/sh/000001-000097-g35-02.sh
sbatch ./src/sh/000001-000066-g35-02.sh
sbatch ./src/sh/000001-000080-g35-02.sh
sbatch ./src/sh/000001-000002-g35-02.sh
sbatch ./src/sh/000001-000088-g35-02.sh
sleep 300