#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000085-g50-02.sh
sbatch ./src/sh/000001-000070-g50-02.sh
sbatch ./src/sh/000001-000002-g50-02.sh
sbatch ./src/sh/000001-000099-g50-02.sh
sbatch ./src/sh/000001-000098-g50-02.sh
sbatch ./src/sh/000001-000068-g50-02.sh
sbatch ./src/sh/000001-000060-g50-02.sh
sbatch ./src/sh/000001-000096-g50-02.sh
sbatch ./src/sh/000001-000092-g50-02.sh
sbatch ./src/sh/000001-000067-g50-02.sh
sleep 600