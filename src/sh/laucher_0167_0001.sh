#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-04/000001-000021-000092-v50-04-P.pkl ./data/generated/problems/paper/v50-04/000001-000021-000092-v50-04-R.json 200 ./data/generated/problems/paper/v50-04/v50-04.json ./data/generated/problems/paper/v50-04/000001-000021-000092-v50-04-T.pkl
sleep 601