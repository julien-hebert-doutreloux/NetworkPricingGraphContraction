#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-07/000001-000025-000097-d35-07-P.pkl ./data/generated/problems/paper/d35-07/000001-000025-000097-d35-07-R.json 205
sleep 600