#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000072-g40-06.sh
sbatch ./src/sh/000001-000073-g40-06.sh
sbatch ./src/sh/000001-000083-g40-06.sh
sbatch ./src/sh/000001-000026-g40-06.sh
sbatch ./src/sh/000001-000027-g40-06.sh
sbatch ./src/sh/000001-000007-g40-06.sh
sbatch ./src/sh/000001-000056-g40-06.sh
sbatch ./src/sh/000001-000050-g40-06.sh
sbatch ./src/sh/000001-000038-g40-06.sh
sbatch ./src/sh/000001-000039-g40-06.sh
sbatch ./src/sh/000001-000042-g40-06.sh
sbatch ./src/sh/000001-000043-g40-06.sh
sbatch ./src/sh/000001-000046-g40-06.sh
sbatch ./src/sh/000001-000099-g40-06.sh
sbatch ./src/sh/000001-000098-g40-06.sh
sbatch ./src/sh/000001-000044-g40-06.sh
sbatch ./src/sh/000001-000037-g40-06.sh
sbatch ./src/sh/000001-000091-g40-06.sh
sbatch ./src/sh/000001-000067-g40-06.sh
sbatch ./src/sh/000001-000048-g40-06.sh
sbatch ./src/sh/000001-000096-g40-06.sh
sbatch ./src/sh/000001-000049-g40-06.sh
sbatch ./src/sh/000001-000095-g40-06.sh
sbatch ./src/sh/000001-000060-g40-06.sh
sleep 600