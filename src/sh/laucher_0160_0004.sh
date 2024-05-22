#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=36:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h40-10/000001-000006-000081-h40-10-P.pkl ./data/generated/problems/paper/h40-10/000001-000006-000081-h40-10-R.json 200 ./data/generated/problems/paper/h40-10/h40-10.json ./data/generated/problems/paper/h40-10/000001-000006-000081-h40-10-T.pkl
sleep 601