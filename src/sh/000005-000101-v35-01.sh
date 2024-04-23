#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=17:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v35-01/000005-000101-v35-01-P.pkl ./data/generated/problems/paper/v35-01/000005-000101-v35-01-R.json 624
sleep 60