#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=06:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000011-000099-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000011-000099-g40-03-R.json 234
sleep 600