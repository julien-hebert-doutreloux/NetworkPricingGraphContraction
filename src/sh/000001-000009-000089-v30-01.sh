#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=12:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-01/000001-000009-000089-v30-01-P.pkl ./data/generated/problems/paper/v30-01/000001-000009-000089-v30-01-R.json 486
sleep 600