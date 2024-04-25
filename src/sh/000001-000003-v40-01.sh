#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=00:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v40-01/000001-000003-v40-01-P.pkl ./data/generated/problems/paper/v40-01/000001-000003-v40-01-R.json 1007
sleep 300