#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:02:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000018-000070-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000018-000070-g30-03-R.json 252
sleep 600