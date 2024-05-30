#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:41:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000037-000017-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000037-000017-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000037-000017-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000006-000028-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000006-000028-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000006-000028-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000023-000004-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000023-000004-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000023-000004-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000014-000050-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000014-000050-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000014-000050-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000065-000005-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000065-000005-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000065-000005-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000106-000003-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000106-000003-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000106-000003-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000086-000050-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000086-000050-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000086-000050-g50-04-T.pkl
sleep 600