#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=00:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000003-g45-07-R.json 206
sleep 300