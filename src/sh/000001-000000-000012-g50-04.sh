#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=00:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000000-000012-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000000-000012-g50-04-R.json 172
sleep 600