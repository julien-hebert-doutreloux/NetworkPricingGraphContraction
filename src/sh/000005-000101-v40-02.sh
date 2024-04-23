#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=11:04:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v40-02/000005-000101-v40-02-P.pkl ./data/generated/problems/paper/v40-02/000005-000101-v40-02-R.json 390
sleep 60