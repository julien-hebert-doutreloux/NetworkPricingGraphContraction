#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=00:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000007-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000007-000014-g45-01-R.json 165
sleep 600