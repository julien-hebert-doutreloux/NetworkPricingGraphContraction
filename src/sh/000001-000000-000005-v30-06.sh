#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=01:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-06/000001-000000-000005-v30-06-P.pkl ./data/generated/problems/paper/v30-06/000001-000000-000005-v30-06-R.json 862
sleep 600