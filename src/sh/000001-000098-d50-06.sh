#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=15:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d50-06/000001-000098-d50-06-P.pkl ./data/generated/problems/paper/d50-06/000001-000098-d50-06-R.json 578
sleep 600