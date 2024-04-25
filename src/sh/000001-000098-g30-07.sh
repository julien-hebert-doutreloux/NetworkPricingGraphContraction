#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000098-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000098-g30-07-R.json 136
sleep 60