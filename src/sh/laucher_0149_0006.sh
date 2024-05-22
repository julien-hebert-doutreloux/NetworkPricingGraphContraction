#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h45-01/000001-000004-000092-h45-01-P.pkl ./data/generated/problems/paper/h45-01/000001-000004-000092-h45-01-R.json 200 ./data/generated/problems/paper/h45-01/h45-01.json ./data/generated/problems/paper/h45-01/000001-000004-000092-h45-01-T.pkl
sleep 601