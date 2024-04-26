#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:21:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000007-000099-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000007-000099-g35-05-R.json 117
sleep 600