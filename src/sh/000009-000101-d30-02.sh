#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-02/000009-000101-d30-02-P.pkl ./data/generated/problems/paper/d30-02/000009-000101-d30-02-R.json 197
sleep 60