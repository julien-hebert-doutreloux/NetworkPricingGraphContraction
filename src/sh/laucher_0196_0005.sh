#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=04:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000009-000065-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000009-000065-g35-09-R.json 28.277220727 ./data/generated/problems/paper/g35-09/g35-09.json ./data/generated/problems/paper/g35-09/000001-000009-000065-g35-09-T.pkl
sleep 601