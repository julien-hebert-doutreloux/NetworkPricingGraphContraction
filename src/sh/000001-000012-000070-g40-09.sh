#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000012-000070-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000012-000070-g40-09-R.json 145
sleep 600