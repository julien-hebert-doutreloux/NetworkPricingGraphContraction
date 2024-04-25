#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=04:37:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000094-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000094-g50-04-R.json 172
sleep 60