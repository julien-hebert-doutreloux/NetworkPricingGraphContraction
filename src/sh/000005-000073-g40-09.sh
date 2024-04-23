#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:04:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000005-000073-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000005-000073-g40-09-R.json 145
sleep 60