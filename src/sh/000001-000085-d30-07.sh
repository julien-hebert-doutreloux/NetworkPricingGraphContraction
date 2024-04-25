#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-07/000001-000085-d30-07-P.pkl ./data/generated/problems/paper/d30-07/000001-000085-d30-07-R.json 109
sleep 300