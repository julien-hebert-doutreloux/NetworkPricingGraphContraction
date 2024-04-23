#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=11:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-01/000002-000101-v50-01-P.pkl ./data/generated/problems/paper/v50-01/000002-000101-v50-01-R.json 391
sleep 60