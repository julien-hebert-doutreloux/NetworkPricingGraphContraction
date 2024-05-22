#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-08/000001-000020-000094-v45-08-P.pkl ./data/generated/problems/paper/v45-08/000001-000020-000094-v45-08-R.json 200 ./data/generated/problems/paper/v45-08/v45-08.json ./data/generated/problems/paper/v45-08/000001-000020-000094-v45-08-T.pkl
sleep 601