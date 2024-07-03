#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=41:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000004-000012-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000004-000012-g50-04-R.json 74 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000004-000012-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000031-000091-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000031-000091-g50-04-R.json 74 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000031-000091-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000010-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000010-000011-g50-04-R.json 74 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000010-000011-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000021-000039-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000021-000039-g50-04-R.json 74 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000021-000039-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000013-000021-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000013-000021-g50-04-R.json 74 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000013-000021-g50-04-T.pkl
sleep 600