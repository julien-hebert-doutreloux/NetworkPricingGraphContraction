#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:07:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000096-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000096-g30-05-R.json 187
sleep 300