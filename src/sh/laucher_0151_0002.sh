#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=42:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h40-09/000001-000023-000095-h40-09-P.pkl ./data/generated/problems/paper/h40-09/000001-000023-000095-h40-09-R.json 200 ./data/generated/problems/paper/h40-09/h40-09.json ./data/generated/problems/paper/h40-09/000001-000023-000095-h40-09-T.pkl
sleep 601