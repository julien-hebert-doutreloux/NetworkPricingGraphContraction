#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=07:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000007-000099-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000007-000099-g30-01-R.json 276
sleep 600