#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=44:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-10/000001-000011-000099-d40-10-P.pkl ./data/generated/problems/paper/d40-10/000001-000011-000099-d40-10-R.json 200 ./data/generated/problems/paper/d40-10/d40-10.json ./data/generated/problems/paper/d40-10/000001-000011-000099-d40-10-T.pkl
sleep 601