#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=09:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-01/000001-000086-v50-01-P.pkl ./data/generated/problems/paper/v50-01/000001-000086-v50-01-R.json 391
sleep 300