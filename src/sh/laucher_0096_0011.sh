#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=16:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-03/000001-000004-000036-v45-03-P.pkl ./data/generated/problems/paper/v45-03/000001-000004-000036-v45-03-R.json 200 ./data/generated/problems/paper/v45-03/v45-03.json ./data/generated/problems/paper/v45-03/000001-000004-000036-v45-03-T.pkl
sleep 601