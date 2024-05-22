#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=20:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v40-10/000001-000007-000046-v40-10-P.pkl ./data/generated/problems/paper/v40-10/000001-000007-000046-v40-10-R.json 200 ./data/generated/problems/paper/v40-10/v40-10.json ./data/generated/problems/paper/v40-10/000001-000007-000046-v40-10-T.pkl
sleep 601