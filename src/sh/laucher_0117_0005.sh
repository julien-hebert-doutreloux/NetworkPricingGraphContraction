#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=02:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-07/000001-000003-000002-v45-07-P.pkl ./data/generated/problems/paper/v45-07/000001-000003-000002-v45-07-R.json 200 ./data/generated/problems/paper/v45-07/v45-07.json ./data/generated/problems/paper/v45-07/000001-000003-000002-v45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v45-07/000001-000002-000002-v45-07-P.pkl ./data/generated/problems/paper/v45-07/000001-000002-000002-v45-07-R.json 200 ./data/generated/problems/paper/v45-07/v45-07.json ./data/generated/problems/paper/v45-07/000001-000002-000002-v45-07-T.pkl
sleep 601