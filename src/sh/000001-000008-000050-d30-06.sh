#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=10:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-06/000001-000008-000050-d30-06-P.pkl ./data/generated/problems/paper/d30-06/000001-000008-000050-d30-06-R.json 772
sleep 600