#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=43:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-08/000001-000003-000097-d45-08-P.pkl ./data/generated/problems/paper/d45-08/000001-000003-000097-d45-08-R.json 200 ./data/generated/problems/paper/d45-08/d45-08.json ./data/generated/problems/paper/d45-08/000001-000003-000097-d45-08-T.pkl
sleep 601