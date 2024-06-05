#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000002-000048-000051-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000002-000048-000051-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000002-000048-000051-g50-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000001-000064-000050-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000001-000064-000050-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000001-000064-000050-g50-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000003-000055-000022-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000003-000055-000022-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000003-000055-000022-g50-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000001-000004-000050-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000001-000004-000050-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000001-000004-000050-g50-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000001-000070-000050-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000001-000070-000050-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000001-000070-000050-g50-03-T.pkl
sleep 600