#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=25:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000021-000056-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000021-000056-g50-09-R.json 200 ./data/generated/problems/paper/g50-09/g50-09.json ./data/generated/problems/paper/g50-09/000001-000021-000056-g50-09-T.pkl
sleep 601