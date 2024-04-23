#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:11:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000003-000101-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000003-000101-g30-09-R.json 109
sleep 60