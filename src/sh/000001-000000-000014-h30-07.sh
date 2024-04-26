#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h30-07/000001-000000-000014-h30-07-P.pkl ./data/generated/problems/paper/h30-07/000001-000000-000014-h30-07-R.json 782
sleep 600