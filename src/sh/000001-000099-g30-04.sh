#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=09:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000099-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000099-g30-04-R.json 332
sleep 300