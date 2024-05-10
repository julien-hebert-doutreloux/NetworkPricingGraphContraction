#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=17:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-06/000001-000012-000073-d45-06-P.pkl ./data/generated/problems/paper/d45-06/000001-000012-000073-d45-06-R.json 854
sleep 600