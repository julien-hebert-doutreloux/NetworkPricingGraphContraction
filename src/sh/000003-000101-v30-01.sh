#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=13:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-01/000003-000101-v30-01-P.pkl ./data/generated/problems/paper/v30-01/000003-000101-v30-01-R.json 486
sleep 60