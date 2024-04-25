#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000092-g40-02.sh
sbatch ./src/sh/000001-000060-g40-02.sh
sbatch ./src/sh/000001-000098-g40-02.sh
sbatch ./src/sh/000001-000099-g40-02.sh
sbatch ./src/sh/000001-000088-g40-02.sh
sbatch ./src/sh/000001-000089-g40-02.sh
sbatch ./src/sh/000001-000053-g40-02.sh
sbatch ./src/sh/000001-000052-g40-02.sh
sbatch ./src/sh/000001-000078-g40-02.sh
sbatch ./src/sh/000001-000002-g40-02.sh
sbatch ./src/sh/000001-000073-g40-02.sh
sbatch ./src/sh/000001-000077-g40-02.sh
sbatch ./src/sh/000001-000082-g40-02.sh
sleep 600