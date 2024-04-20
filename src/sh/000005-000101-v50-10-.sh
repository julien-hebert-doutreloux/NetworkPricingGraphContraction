#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=15:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-10/000005-000101-v50-10-P.pkl ./data/generated/problems/paper/v50-10/000005-000101-v50-10-R.json 500
sleep 60