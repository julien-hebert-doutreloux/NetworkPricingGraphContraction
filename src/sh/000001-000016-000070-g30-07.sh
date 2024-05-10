#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:47:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000016-000070-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000016-000070-g30-07-R.json 136
sleep 600