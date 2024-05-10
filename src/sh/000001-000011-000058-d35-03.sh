#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=08:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-03/000001-000011-000058-d35-03-P.pkl ./data/generated/problems/paper/d35-03/000001-000011-000058-d35-03-R.json 543
sleep 600