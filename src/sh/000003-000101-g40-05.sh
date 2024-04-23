#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000003-000101-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000003-000101-g40-05-R.json 113
sleep 60