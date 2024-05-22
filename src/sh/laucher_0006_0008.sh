#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=22:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-05/000001-000009-000050-d30-05-P.pkl ./data/generated/problems/paper/d30-05/000001-000009-000050-d30-05-R.json 200 ./data/generated/problems/paper/d30-05/d30-05.json ./data/generated/problems/paper/d30-05/000001-000009-000050-d30-05-T.pkl
sleep 601