#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-05/000001-000097-d40-05-P.pkl ./data/generated/problems/paper/d40-05/000001-000097-d40-05-R.json 196
sleep 60