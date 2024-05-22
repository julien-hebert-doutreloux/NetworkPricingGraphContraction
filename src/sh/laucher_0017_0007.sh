#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=02:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h50-04/000001-000005-000006-h50-04-P.pkl ./data/generated/problems/paper/h50-04/000001-000005-000006-h50-04-R.json 200 ./data/generated/problems/paper/h50-04/h50-04.json ./data/generated/problems/paper/h50-04/000001-000005-000006-h50-04-T.pkl
sleep 601