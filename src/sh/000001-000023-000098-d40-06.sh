#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=18:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-06/000001-000023-000098-d40-06-P.pkl ./data/generated/problems/paper/d40-06/000001-000023-000098-d40-06-R.json 687
sleep 600