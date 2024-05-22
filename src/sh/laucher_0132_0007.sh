#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=42:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v35-09/000001-000001-000002-v35-09-P.pkl ./data/generated/problems/paper/v35-09/000001-000001-000002-v35-09-R.json 200 ./data/generated/problems/paper/v35-09/v35-09.json ./data/generated/problems/paper/v35-09/000001-000001-000002-v35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v35-09/000001-000014-000093-v35-09-P.pkl ./data/generated/problems/paper/v35-09/000001-000014-000093-v35-09-R.json 200 ./data/generated/problems/paper/v35-09/v35-09.json ./data/generated/problems/paper/v35-09/000001-000014-000093-v35-09-T.pkl
sleep 601