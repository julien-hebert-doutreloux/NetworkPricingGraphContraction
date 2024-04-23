#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=10:32:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-01/000005-000101-d30-01-P.pkl ./data/generated/problems/paper/d30-01/000005-000101-d30-01-R.json 371
sleep 60