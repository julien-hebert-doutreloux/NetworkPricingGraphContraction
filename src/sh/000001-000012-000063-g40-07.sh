#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000012-000063-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000012-000063-g40-07-R.json 217
sleep 600