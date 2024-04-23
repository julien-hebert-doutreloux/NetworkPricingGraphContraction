#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000101-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000101-g40-01-R.json 113
sleep 60