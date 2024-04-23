#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000005-000024-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000005-000024-g30-08-R.json 130
sleep 60