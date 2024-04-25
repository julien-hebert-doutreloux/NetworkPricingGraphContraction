#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=07:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-08/000001-000094-d30-08-P.pkl ./data/generated/problems/paper/d30-08/000001-000094-d30-08-R.json 263
sleep 60