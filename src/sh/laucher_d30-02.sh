#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000098-d30-02.sh
sbatch ./src/sh/000001-000099-d30-02.sh
sbatch ./src/sh/000001-000069-d30-02.sh
sbatch ./src/sh/000001-000095-d30-02.sh
sbatch ./src/sh/000001-000060-d30-02.sh
sbatch ./src/sh/000001-000094-d30-02.sh
sbatch ./src/sh/000001-000096-d30-02.sh
sbatch ./src/sh/000001-000097-d30-02.sh
sbatch ./src/sh/000001-000066-d30-02.sh
sbatch ./src/sh/000001-000093-d30-02.sh
sbatch ./src/sh/000001-000091-d30-02.sh
sbatch ./src/sh/000001-000077-d30-02.sh
sbatch ./src/sh/000001-000070-d30-02.sh
sleep 300