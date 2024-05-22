#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=44:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-07/000001-000017-000099-d45-07-P.pkl ./data/generated/problems/paper/d45-07/000001-000017-000099-d45-07-R.json 200 ./data/generated/problems/paper/d45-07/d45-07.json ./data/generated/problems/paper/d45-07/000001-000017-000099-d45-07-T.pkl
sleep 601