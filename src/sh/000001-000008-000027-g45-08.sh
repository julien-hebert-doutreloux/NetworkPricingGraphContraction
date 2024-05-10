#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=01:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000008-000027-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000008-000027-g45-08-R.json 182
sleep 600