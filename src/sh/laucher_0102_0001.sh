#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=22:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h40-01/000001-000007-000050-h40-01-P.pkl ./data/generated/problems/paper/h40-01/000001-000007-000050-h40-01-R.json 200 ./data/generated/problems/paper/h40-01/h40-01.json ./data/generated/problems/paper/h40-01/000001-000007-000050-h40-01-T.pkl
sleep 601