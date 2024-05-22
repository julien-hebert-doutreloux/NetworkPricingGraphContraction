#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=05:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-09/000001-000001-000011-v45-09-P.pkl ./data/generated/problems/paper/v45-09/000001-000001-000011-v45-09-R.json 200 ./data/generated/problems/paper/v45-09/v45-09.json ./data/generated/problems/paper/v45-09/000001-000001-000011-v45-09-T.pkl
sleep 601