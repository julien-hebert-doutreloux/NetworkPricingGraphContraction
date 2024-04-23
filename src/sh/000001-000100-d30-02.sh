#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-02/000001-000100-d30-02-P.pkl ./data/generated/problems/paper/d30-02/000001-000100-d30-02-R.json 197
sleep 60