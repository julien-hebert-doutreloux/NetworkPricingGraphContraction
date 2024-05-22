#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=43:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-10/000001-000017-000098-v50-10-P.pkl ./data/generated/problems/paper/v50-10/000001-000017-000098-v50-10-R.json 200 ./data/generated/problems/paper/v50-10/v50-10.json ./data/generated/problems/paper/v50-10/000001-000017-000098-v50-10-T.pkl
sleep 601