#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000084-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000084-g50-08-R.json 231
sleep 60