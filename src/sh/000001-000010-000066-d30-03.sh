#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-03/000001-000010-000066-d30-03-P.pkl ./data/generated/problems/paper/d30-03/000001-000010-000066-d30-03-R.json 133
sleep 600