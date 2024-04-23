#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=01:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-08/000010-000024-d30-08-P.pkl ./data/generated/problems/paper/d30-08/000010-000024-d30-08-R.json 263
sleep 60