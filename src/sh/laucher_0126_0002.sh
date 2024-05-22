#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=43:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d50-07/000001-000006-000098-d50-07-P.pkl ./data/generated/problems/paper/d50-07/000001-000006-000098-d50-07-R.json 200 ./data/generated/problems/paper/d50-07/d50-07.json ./data/generated/problems/paper/d50-07/000001-000006-000098-d50-07-T.pkl
sleep 601