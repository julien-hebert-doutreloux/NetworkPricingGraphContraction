#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=01:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000039-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000039-g40-06-R.json 142
sleep 600