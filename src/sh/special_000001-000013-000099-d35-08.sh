#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=01:59:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-08/000001-000013-000099-d35-08-P.pkl ./data/generated/problems/paper/d35-08/000001-000013-000099-d35-08-R.json 274
sleep 300