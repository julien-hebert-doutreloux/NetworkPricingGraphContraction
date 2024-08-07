#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=35:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000000-000028-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000000-000028-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000000-000028-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000028-000005-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000028-000005-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000028-000005-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000023-000005-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000023-000005-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000023-000005-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000012-000060-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000012-000060-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000012-000060-g50-09-T.pkl
sleep 600