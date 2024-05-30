#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=22:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000031-000050-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000031-000050-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000031-000050-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000003-000059-000023-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000003-000059-000023-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000003-000059-000023-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000007-000002-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000007-000002-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000007-000002-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000024-000050-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000024-000050-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000024-000050-g50-08-T.pkl
sleep 600