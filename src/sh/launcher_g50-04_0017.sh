#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000031-000016-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000031-000016-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000031-000016-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000040-000004-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000040-000004-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000040-000004-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000000-000025-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000000-000025-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000000-000025-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000109-000050-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000109-000050-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000109-000050-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000091-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000091-000011-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000091-000011-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000002-000030-000051-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000002-000030-000051-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000002-000030-000051-g50-04-T.pkl
sleep 600