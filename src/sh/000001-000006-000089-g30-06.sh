#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000006-000089-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000006-000089-g30-06-R.json 155
sleep 600