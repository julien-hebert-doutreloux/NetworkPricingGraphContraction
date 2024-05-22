#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=07:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h40-06/000001-000002-000003-h40-06-P.pkl ./data/generated/problems/paper/h40-06/000001-000002-000003-h40-06-R.json 200 ./data/generated/problems/paper/h40-06/h40-06.json ./data/generated/problems/paper/h40-06/000001-000002-000003-h40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/h40-06/000001-000008-000013-h40-06-P.pkl ./data/generated/problems/paper/h40-06/000001-000008-000013-h40-06-R.json 200 ./data/generated/problems/paper/h40-06/h40-06.json ./data/generated/problems/paper/h40-06/000001-000008-000013-h40-06-T.pkl
sleep 601