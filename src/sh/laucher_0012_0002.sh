#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=40:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-09/000001-000003-000091-d45-09-P.pkl ./data/generated/problems/paper/d45-09/000001-000003-000091-d45-09-R.json 200 ./data/generated/problems/paper/d45-09/d45-09.json ./data/generated/problems/paper/d45-09/000001-000003-000091-d45-09-T.pkl
sleep 601