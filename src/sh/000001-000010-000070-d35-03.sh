#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=10:41:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-03/000001-000010-000070-d35-03-P.pkl ./data/generated/problems/paper/d35-03/000001-000010-000070-d35-03-R.json 543
sleep 600