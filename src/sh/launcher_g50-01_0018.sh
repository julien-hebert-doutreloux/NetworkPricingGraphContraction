#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000019-000050-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000019-000050-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000019-000050-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000048-000005-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000048-000005-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000048-000005-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000016-000050-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000016-000050-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000016-000050-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000003-000007-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000003-000007-000003-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000003-000007-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000061-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000061-000003-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000061-000003-g50-01-T.pkl
sleep 600