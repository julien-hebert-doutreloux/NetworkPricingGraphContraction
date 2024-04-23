#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=04:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000005-000061-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000005-000061-g50-10-R.json 271
sleep 60