#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=33:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000023-000074-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000023-000074-g45-03-R.json 200 ./data/generated/problems/paper/g45-03/g45-03.json ./data/generated/problems/paper/g45-03/000001-000023-000074-g45-03-T.pkl
sleep 601