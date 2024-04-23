#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=06:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000005-000082-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000005-000082-g50-07-R.json 269
sleep 60