#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=07:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000001-000089-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000001-000089-g50-03-R.json 287
sleep 600