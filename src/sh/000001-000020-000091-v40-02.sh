#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=09:59:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v40-02/000001-000020-000091-v40-02-P.pkl ./data/generated/problems/paper/v40-02/000001-000020-000091-v40-02-R.json 390
sleep 600