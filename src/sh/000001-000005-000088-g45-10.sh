#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=06:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000005-000088-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000005-000088-g45-10-R.json 252
sleep 600