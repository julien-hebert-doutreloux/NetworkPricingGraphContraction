#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000077-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000077-g35-04-R.json 167
sleep 300