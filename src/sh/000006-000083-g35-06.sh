#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=02:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000006-000083-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000006-000083-g35-06-R.json 113
sleep 60