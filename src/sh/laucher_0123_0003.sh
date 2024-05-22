#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=02:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000003-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000003-000011-g50-04-R.json 88.206764742 ./data/generated/problems/paper/g50-04/g50-04.json ./data/generated/problems/paper/g50-04/000001-000003-000011-g50-04-T.pkl
sleep 601