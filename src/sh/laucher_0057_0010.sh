#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-05/000001-000007-000094-d45-05-P.pkl ./data/generated/problems/paper/d45-05/000001-000007-000094-d45-05-R.json 200 ./data/generated/problems/paper/d45-05/d45-05.json ./data/generated/problems/paper/d45-05/000001-000007-000094-d45-05-T.pkl
sleep 601