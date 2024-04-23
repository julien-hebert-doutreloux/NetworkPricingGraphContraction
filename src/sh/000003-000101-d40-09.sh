#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=13:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-09/000003-000101-d40-09-P.pkl ./data/generated/problems/paper/d40-09/000003-000101-d40-09-R.json 492
sleep 60