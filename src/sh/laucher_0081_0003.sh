#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-10/000001-000021-000094-v45-10-P.pkl ./data/generated/problems/paper/v45-10/000001-000021-000094-v45-10-R.json 200 ./data/generated/problems/paper/v45-10/v45-10.json ./data/generated/problems/paper/v45-10/000001-000021-000094-v45-10-T.pkl
sleep 601