#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=00:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000002-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000002-000002-g35-07-R.json 196
sleep 600