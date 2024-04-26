#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=22:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-06/000001-000024-000096-d45-06-P.pkl ./data/generated/problems/paper/d45-06/000001-000024-000096-d45-06-R.json 854
sleep 600