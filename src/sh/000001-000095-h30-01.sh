#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=10:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h30-01/000001-000095-h30-01-P.pkl ./data/generated/problems/paper/h30-01/000001-000095-h30-01-R.json 406
sleep 300