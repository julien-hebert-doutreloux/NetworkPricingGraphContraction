#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=04:05:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000010-000098-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000010-000098-g40-09-R.json 145
sleep 600