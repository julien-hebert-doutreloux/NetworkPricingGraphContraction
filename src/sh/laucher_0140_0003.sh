#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=26:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000008-000095-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000008-000095-g50-08-R.json 125.701376181 ./data/generated/problems/paper/g50-08/g50-08.json ./data/generated/problems/paper/g50-08/000001-000008-000095-g50-08-T.pkl
sleep 601