#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=06:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-01/000001-000095-d35-01-P.pkl ./data/generated/problems/paper/d35-01/000001-000095-d35-01-R.json 258
sleep 600