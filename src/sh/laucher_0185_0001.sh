#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=36:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h40-03/000001-000002-000082-h40-03-P.pkl ./data/generated/problems/paper/h40-03/000001-000002-000082-h40-03-R.json 200 ./data/generated/problems/paper/h40-03/h40-03.json ./data/generated/problems/paper/h40-03/000001-000002-000082-h40-03-T.pkl
sleep 601