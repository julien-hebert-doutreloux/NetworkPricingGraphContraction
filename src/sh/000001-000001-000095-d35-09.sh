#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=07:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-09/000001-000001-000095-d35-09-P.pkl ./data/generated/problems/paper/d35-09/000001-000001-000095-d35-09-R.json 293
sleep 600