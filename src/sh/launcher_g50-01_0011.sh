#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000003-000007-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000003-000007-000003-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000003-000007-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000061-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000061-000003-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000061-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000039-000005-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000039-000005-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000039-000005-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000002-000079-000017-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000002-000079-000017-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000002-000079-000017-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000087-000050-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000087-000050-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000087-000050-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000003-000018-000021-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000003-000018-000021-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000003-000018-000021-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000044-000050-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000044-000050-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000044-000050-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000069-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000069-000003-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000069-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000003-000033-000023-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000003-000033-000023-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000003-000033-000023-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000030-000050-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000030-000050-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000030-000050-g50-01-T.pkl
sleep 600