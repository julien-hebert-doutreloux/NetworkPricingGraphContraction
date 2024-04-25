#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=01:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000005-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000005-g45-06-R.json 732
sleep 600