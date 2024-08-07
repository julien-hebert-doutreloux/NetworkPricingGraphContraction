#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000016-000023-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000016-000023-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000016-000023-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000030-000095-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000030-000095-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000030-000095-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000009-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000009-000011-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000009-000011-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000015-000024-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000015-000024-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000015-000024-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000012-000024-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000012-000024-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000012-000024-g50-04-T.pkl
sleep 600