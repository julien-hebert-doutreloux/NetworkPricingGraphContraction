#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-01/000001-000025-000094-d40-01-P.pkl ./data/generated/problems/paper/d40-01/000001-000025-000094-d40-01-R.json 200 ./data/generated/problems/paper/d40-01/d40-01.json ./data/generated/problems/paper/d40-01/000001-000025-000094-d40-01-T.pkl
sleep 601