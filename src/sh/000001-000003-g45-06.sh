#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=00:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000003-g45-06-R.json 732
sleep 300