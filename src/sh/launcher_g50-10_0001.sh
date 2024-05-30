#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:04:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000063-000001-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000063-000001-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000063-000001-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000011-000021-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000011-000021-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000011-000021-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000059-000001-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000059-000001-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000059-000001-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000002-000093-000021-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000002-000093-000021-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000002-000093-000021-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000003-000025-000004-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000003-000025-000004-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000003-000025-000004-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000050-000001-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000050-000001-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000050-000001-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000008-000002-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000008-000002-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000008-000002-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000002-000048-000051-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000002-000048-000051-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000002-000048-000051-g50-10-T.pkl
sleep 600