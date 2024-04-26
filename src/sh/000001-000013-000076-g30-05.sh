#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=04:05:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000013-000076-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000013-000076-g30-05-R.json 187
sleep 600