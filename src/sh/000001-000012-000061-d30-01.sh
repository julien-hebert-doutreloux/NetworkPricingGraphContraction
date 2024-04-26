#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=06:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-01/000001-000012-000061-d30-01-P.pkl ./data/generated/problems/paper/d30-01/000001-000012-000061-d30-01-R.json 371
sleep 600