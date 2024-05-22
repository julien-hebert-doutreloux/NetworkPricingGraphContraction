#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=21:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d40-05/000001-000013-000099-d40-05-P.pkl ./data/generated/problems/paper/d40-05/000001-000013-000099-d40-05-R.json 95.651526855 ./data/generated/problems/paper/d40-05/d40-05.json ./data/generated/problems/paper/d40-05/000001-000013-000099-d40-05-T.pkl
sleep 601