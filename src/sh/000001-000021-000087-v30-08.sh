#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=18:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-08/000001-000021-000087-v30-08-P.pkl ./data/generated/problems/paper/v30-08/000001-000021-000087-v30-08-R.json 752
sleep 600