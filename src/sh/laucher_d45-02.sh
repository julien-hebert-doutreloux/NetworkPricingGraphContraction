#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000086-d45-02.sh
sbatch ./src/sh/000001-000059-d45-02.sh
sbatch ./src/sh/000001-000052-d45-02.sh
sbatch ./src/sh/000001-000098-d45-02.sh
sbatch ./src/sh/000001-000099-d45-02.sh
sbatch ./src/sh/000001-000096-d45-02.sh
sbatch ./src/sh/000001-000049-d45-02.sh
sbatch ./src/sh/000001-000097-d45-02.sh
sbatch ./src/sh/000001-000095-d45-02.sh
sbatch ./src/sh/000001-000060-d45-02.sh
sbatch ./src/sh/000001-000094-d45-02.sh
sbatch ./src/sh/000001-000090-d45-02.sh
sbatch ./src/sh/000001-000093-d45-02.sh
sleep 300