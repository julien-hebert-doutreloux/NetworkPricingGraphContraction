#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000010-000064-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000010-000064-g35-09-R.json 127
sleep 600