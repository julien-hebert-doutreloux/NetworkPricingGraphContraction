#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=07:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000010-000098-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000010-000098-g50-10-R.json 271
sleep 600