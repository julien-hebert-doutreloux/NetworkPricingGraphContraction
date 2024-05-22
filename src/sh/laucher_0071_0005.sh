#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=44:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-09/000001-000004-000099-d35-09-P.pkl ./data/generated/problems/paper/d35-09/000001-000004-000099-d35-09-R.json 200 ./data/generated/problems/paper/d35-09/d35-09.json ./data/generated/problems/paper/d35-09/000001-000004-000099-d35-09-T.pkl
sleep 601