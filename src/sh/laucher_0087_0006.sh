#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=43:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h45-06/000001-000021-000097-h45-06-P.pkl ./data/generated/problems/paper/h45-06/000001-000021-000097-h45-06-R.json 200 ./data/generated/problems/paper/h45-06/h45-06.json ./data/generated/problems/paper/h45-06/000001-000021-000097-h45-06-T.pkl
sleep 601