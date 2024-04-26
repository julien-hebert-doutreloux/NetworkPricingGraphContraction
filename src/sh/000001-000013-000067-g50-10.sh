#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000013-000067-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000013-000067-g50-10-R.json 271
sleep 600