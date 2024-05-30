#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000043-000018-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000043-000018-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000043-000018-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000094-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000094-000011-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000094-000011-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000078-000050-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000078-000050-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000078-000050-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000028-000012-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000028-000012-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000028-000012-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000097-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000097-000011-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000097-000011-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000064-000019-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000064-000019-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000064-000019-g50-04-T.pkl
sleep 600