#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:04:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000075-000051-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000075-000051-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000075-000051-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000003-000021-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000003-000021-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000003-000021-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000019-000017-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000019-000017-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000019-000017-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000055-000010-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000055-000010-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000055-000010-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000001-000036-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000001-000036-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000001-000036-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000048-000051-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000048-000051-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000048-000051-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000005-000020-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000005-000020-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000005-000020-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000074-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000074-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000074-000050-g30-01-T.pkl
sleep 600