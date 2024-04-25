#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=09:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-09/000001-000097-d30-09-P.pkl ./data/generated/problems/paper/d30-09/000001-000097-d30-09-R.json 361
sleep 300