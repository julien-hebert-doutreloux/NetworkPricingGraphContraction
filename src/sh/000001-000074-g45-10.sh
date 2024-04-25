#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000074-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000074-g45-10-R.json 252
sleep 60