#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=04:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h30-03/000001-000049-h30-03-P.pkl ./data/generated/problems/paper/h30-03/000001-000049-h30-03-R.json 319
sleep 300