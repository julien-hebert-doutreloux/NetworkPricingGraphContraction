#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=30:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000013-000071-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000013-000071-g30-01-R.json 193.371264676 ./data/generated/problems/paper/g30-01/g30-01.json ./data/generated/problems/paper/g30-01/000001-000013-000071-g30-01-T.pkl
sleep 601