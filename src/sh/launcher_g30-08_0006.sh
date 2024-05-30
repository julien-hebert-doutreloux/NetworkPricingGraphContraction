#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000003-000022-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000003-000022-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000003-000022-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000006-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000006-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000006-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000022-000020-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000022-000020-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000022-000020-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000003-000065-000023-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000003-000065-000023-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000003-000065-000023-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000030-000034-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000030-000034-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000030-000034-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000016-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000016-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000016-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000015-000021-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000015-000021-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000015-000021-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000036-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000036-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000036-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000005-000019-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000005-000019-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000005-000019-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000064-000051-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000064-000051-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000064-000051-g30-08-T.pkl
sleep 600