#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=40:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-05/000001-000002-000003-v50-05-P.pkl ./data/generated/problems/paper/v50-05/000001-000002-000003-v50-05-R.json 200 ./data/generated/problems/paper/v50-05/v50-05.json ./data/generated/problems/paper/v50-05/000001-000002-000003-v50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v50-05/000001-000020-000088-v50-05-P.pkl ./data/generated/problems/paper/v50-05/000001-000020-000088-v50-05-R.json 200 ./data/generated/problems/paper/v50-05/v50-05.json ./data/generated/problems/paper/v50-05/000001-000020-000088-v50-05-T.pkl
sleep 601