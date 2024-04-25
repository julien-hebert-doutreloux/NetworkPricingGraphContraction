#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=10:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-06/000001-000046-d30-06-P.pkl ./data/generated/problems/paper/d30-06/000001-000046-d30-06-R.json 772
sleep 60