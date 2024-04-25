#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=15:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d50-06/000001-000096-d50-06-P.pkl ./data/generated/problems/paper/d50-06/000001-000096-d50-06-R.json 578
sleep 60