#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-01/000001-000075-d35-01-P.pkl ./data/generated/problems/paper/d35-01/000001-000075-d35-01-R.json 258
sleep 60