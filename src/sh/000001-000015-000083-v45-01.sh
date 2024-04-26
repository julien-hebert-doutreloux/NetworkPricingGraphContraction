#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=18:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-01/000001-000015-000083-v45-01-P.pkl ./data/generated/problems/paper/v45-01/000001-000015-000083-v45-01-R.json 813
sleep 600