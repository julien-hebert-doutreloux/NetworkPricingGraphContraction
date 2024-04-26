#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000007-000082-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000007-000082-g30-08-R.json 130
sleep 600