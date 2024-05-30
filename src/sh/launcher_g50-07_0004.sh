#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000002-000085-000025-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000002-000085-000025-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000002-000085-000025-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000005-000002-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000005-000002-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000005-000002-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000003-000033-000018-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000003-000033-000018-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000003-000033-000018-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000040-000001-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000040-000001-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000040-000001-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000003-000059-000017-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000003-000059-000017-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000003-000059-000017-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000088-000050-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000088-000050-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000088-000050-g50-07-T.pkl
sleep 600