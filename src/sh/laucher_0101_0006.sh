#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=44:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000001-000013-000099-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000001-000013-000099-g50-06-R.json 200 ./data/generated/problems/paper/g50-06/g50-06.json ./data/generated/problems/paper/g50-06/000001-000013-000099-g50-06-T.pkl
sleep 601