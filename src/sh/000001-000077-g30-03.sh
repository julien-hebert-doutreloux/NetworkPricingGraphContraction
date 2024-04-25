#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000077-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000077-g30-03-R.json 252
sleep 60