#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=00:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000003-g45-01-R.json 165
sleep 60