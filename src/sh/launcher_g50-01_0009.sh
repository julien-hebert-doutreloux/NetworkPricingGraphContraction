#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=42:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000010-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000010-000003-g50-01-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000010-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000023-000022-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000023-000022-g50-01-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000023-000022-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000024-000091-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000024-000091-g50-01-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000024-000091-g50-01-T.pkl
sleep 600