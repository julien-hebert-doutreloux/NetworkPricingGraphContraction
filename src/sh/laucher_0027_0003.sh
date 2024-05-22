#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=13:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h40-05/000001-000009-000031-h40-05-P.pkl ./data/generated/problems/paper/h40-05/000001-000009-000031-h40-05-R.json 200 ./data/generated/problems/paper/h40-05/h40-05.json ./data/generated/problems/paper/h40-05/000001-000009-000031-h40-05-T.pkl
sleep 601