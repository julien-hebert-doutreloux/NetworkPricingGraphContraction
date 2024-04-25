#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=23:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000098-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000098-g50-01-R.json 871
sleep 60