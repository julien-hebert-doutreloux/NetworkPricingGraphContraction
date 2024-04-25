#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=12:21:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-06/000001-000064-d40-06-P.pkl ./data/generated/problems/paper/d40-06/000001-000064-d40-06-R.json 687
sleep 60