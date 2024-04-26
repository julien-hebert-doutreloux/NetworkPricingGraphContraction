#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=15:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v35-01/000001-000021-000087-v35-01-P.pkl ./data/generated/problems/paper/v35-01/000001-000021-000087-v35-01-R.json 624
sleep 600