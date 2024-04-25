#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=09:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-05/000001-000050-d30-05-P.pkl ./data/generated/problems/paper/d30-05/000001-000050-d30-05-R.json 665
sleep 600