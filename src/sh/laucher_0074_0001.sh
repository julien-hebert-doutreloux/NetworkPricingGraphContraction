#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=29:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-10/000001-000012-000066-d45-10-P.pkl ./data/generated/problems/paper/d45-10/000001-000012-000066-d45-10-R.json 200 ./data/generated/problems/paper/d45-10/d45-10.json ./data/generated/problems/paper/d45-10/000001-000012-000066-d45-10-T.pkl
sleep 601