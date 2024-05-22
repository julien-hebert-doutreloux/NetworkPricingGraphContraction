#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=27:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-09/000001-000012-000062-d40-09-P.pkl ./data/generated/problems/paper/d40-09/000001-000012-000062-d40-09-R.json 200 ./data/generated/problems/paper/d40-09/d40-09.json ./data/generated/problems/paper/d40-09/000001-000012-000062-d40-09-T.pkl
sleep 601