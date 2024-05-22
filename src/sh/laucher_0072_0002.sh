#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=23:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v40-04/000001-000011-000052-v40-04-P.pkl ./data/generated/problems/paper/v40-04/000001-000011-000052-v40-04-R.json 200 ./data/generated/problems/paper/v40-04/v40-04.json ./data/generated/problems/paper/v40-04/000001-000011-000052-v40-04-T.pkl
sleep 601