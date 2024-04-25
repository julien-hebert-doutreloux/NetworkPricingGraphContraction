#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=00:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000002-g30-01-R.json 276
sleep 60