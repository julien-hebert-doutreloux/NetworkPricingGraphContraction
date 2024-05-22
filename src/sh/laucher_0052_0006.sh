#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v40-06/000001-000008-000094-v40-06-P.pkl ./data/generated/problems/paper/v40-06/000001-000008-000094-v40-06-R.json 200 ./data/generated/problems/paper/v40-06/v40-06.json ./data/generated/problems/paper/v40-06/000001-000008-000094-v40-06-T.pkl
sleep 601