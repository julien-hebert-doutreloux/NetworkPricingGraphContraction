#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=21:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000056-000035-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000056-000035-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000056-000035-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000003-000048-000023-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000003-000048-000023-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000003-000048-000023-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000068-000048-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000068-000048-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000068-000048-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000003-000051-000022-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000003-000051-000022-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000003-000051-000022-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000058-000051-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000058-000051-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000058-000051-g50-08-T.pkl
sleep 600