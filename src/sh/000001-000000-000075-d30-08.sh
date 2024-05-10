#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:37:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-08/000001-000000-000075-d30-08-P.pkl ./data/generated/problems/paper/d30-08/000001-000000-000075-d30-08-R.json 263
sleep 600