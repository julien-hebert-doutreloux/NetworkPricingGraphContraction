#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000094-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000094-g35-09-R.json 127
sleep 60