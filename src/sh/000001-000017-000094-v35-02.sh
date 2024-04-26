#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=06:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v35-02/000001-000017-000094-v35-02-P.pkl ./data/generated/problems/paper/v35-02/000001-000017-000094-v35-02-R.json 258
sleep 600