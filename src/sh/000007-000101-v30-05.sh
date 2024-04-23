#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=23:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-05/000007-000101-v30-05-P.pkl ./data/generated/problems/paper/v30-05/000007-000101-v30-05-R.json 839
sleep 60