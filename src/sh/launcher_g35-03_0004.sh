#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:37:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000041-000049-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000041-000049-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000041-000049-g35-03-T.pkl
sleep 600