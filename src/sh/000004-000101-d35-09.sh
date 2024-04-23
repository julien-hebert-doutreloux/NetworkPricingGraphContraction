#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=08:21:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-09/000004-000101-d35-09-P.pkl ./data/generated/problems/paper/d35-09/000004-000101-d35-09-R.json 293
sleep 60