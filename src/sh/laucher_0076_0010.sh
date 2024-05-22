#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=39:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d50-03/000001-000002-000089-d50-03-P.pkl ./data/generated/problems/paper/d50-03/000001-000002-000089-d50-03-R.json 200 ./data/generated/problems/paper/d50-03/d50-03.json ./data/generated/problems/paper/d50-03/000001-000002-000089-d50-03-T.pkl
sleep 601