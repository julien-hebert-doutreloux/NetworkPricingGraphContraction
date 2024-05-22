#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=23:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v35-06/000001-000002-000052-v35-06-P.pkl ./data/generated/problems/paper/v35-06/000001-000002-000052-v35-06-R.json 200 ./data/generated/problems/paper/v35-06/v35-06.json ./data/generated/problems/paper/v35-06/000001-000002-000052-v35-06-T.pkl
sleep 601