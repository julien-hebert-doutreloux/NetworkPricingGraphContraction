#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=19:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v35-10/000001-000006-000044-v35-10-P.pkl ./data/generated/problems/paper/v35-10/000001-000006-000044-v35-10-R.json 200 ./data/generated/problems/paper/v35-10/v35-10.json ./data/generated/problems/paper/v35-10/000001-000006-000044-v35-10-T.pkl
sleep 601