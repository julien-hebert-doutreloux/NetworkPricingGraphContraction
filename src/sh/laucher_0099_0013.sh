#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d50-06/000001-000024-000094-d50-06-P.pkl ./data/generated/problems/paper/d50-06/000001-000024-000094-d50-06-R.json 200 ./data/generated/problems/paper/d50-06/d50-06.json ./data/generated/problems/paper/d50-06/000001-000024-000094-d50-06-T.pkl
sleep 601