#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=00:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-05/000001-000003-v30-05-P.pkl ./data/generated/problems/paper/v30-05/000001-000003-v30-05-R.json 839
sleep 600