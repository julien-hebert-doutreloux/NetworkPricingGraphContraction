#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=20:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000004-000101-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000004-000101-g45-06-R.json 732
sleep 60