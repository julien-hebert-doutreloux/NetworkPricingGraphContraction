#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=07:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-01/000005-000101-d35-01-P.pkl ./data/generated/problems/paper/d35-01/000005-000101-d35-01-R.json 258
sleep 60