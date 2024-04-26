#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=06:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000017-000074-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000017-000074-g30-02-R.json 307
sleep 600