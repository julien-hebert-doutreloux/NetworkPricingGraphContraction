#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000001-000072-000050-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000001-000072-000050-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000001-000072-000050-g50-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000003-000037-000023-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000003-000037-000023-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000003-000037-000023-g50-03-T.pkl
sleep 600