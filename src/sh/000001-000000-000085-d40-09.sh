#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=11:45:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-09/000001-000000-000085-d40-09-P.pkl ./data/generated/problems/paper/d40-09/000001-000000-000085-d40-09-R.json 492
sleep 600