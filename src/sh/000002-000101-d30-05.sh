#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=18:47:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-05/000002-000101-d30-05-P.pkl ./data/generated/problems/paper/d30-05/000002-000101-d30-05-R.json 665
sleep 60