#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=18:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h30-09/000001-000091-h30-09-P.pkl ./data/generated/problems/paper/h30-09/000001-000091-h30-09-R.json 732
sleep 60