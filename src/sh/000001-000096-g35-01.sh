#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=04:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000096-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000096-g35-01-R.json 166
sleep 60