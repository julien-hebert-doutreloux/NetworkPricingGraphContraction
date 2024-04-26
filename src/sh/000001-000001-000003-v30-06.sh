#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=00:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-06/000001-000001-000003-v30-06-P.pkl ./data/generated/problems/paper/v30-06/000001-000001-000003-v30-06-R.json 862
sleep 600