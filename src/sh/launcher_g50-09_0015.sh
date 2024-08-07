#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000019-000058-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000019-000058-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000019-000058-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000025-000009-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000025-000009-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000025-000009-g50-09-T.pkl
sleep 600