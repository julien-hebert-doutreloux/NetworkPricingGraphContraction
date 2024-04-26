#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-05/000001-000017-000099-d40-05-P.pkl ./data/generated/problems/paper/d40-05/000001-000017-000099-d40-05-R.json 196
sleep 600