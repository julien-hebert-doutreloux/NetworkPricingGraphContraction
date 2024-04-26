#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=04:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000020-000069-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000020-000069-g35-03-R.json 209
sleep 600