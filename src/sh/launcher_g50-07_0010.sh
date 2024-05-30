#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000003-000074-000020-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000003-000074-000020-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000003-000074-000020-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000003-000056-000019-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000003-000056-000019-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000003-000056-000019-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000041-000001-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000041-000001-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000041-000001-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000007-000002-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000007-000002-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000007-000002-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000002-000081-000026-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000002-000081-000026-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000002-000081-000026-g50-07-T.pkl
sleep 600