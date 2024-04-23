#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000006-000065-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000006-000065-g30-02-R.json 307
sleep 60