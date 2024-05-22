#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=16:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-06/000001-000011-000036-d30-06-P.pkl ./data/generated/problems/paper/d30-06/000001-000011-000036-d30-06-R.json 200 ./data/generated/problems/paper/d30-06/d30-06.json ./data/generated/problems/paper/d30-06/000001-000011-000036-d30-06-T.pkl
sleep 601