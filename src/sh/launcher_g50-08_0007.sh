#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=22:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000038-000050-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000038-000050-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000038-000050-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000042-000001-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000042-000001-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000042-000001-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000039-000026-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000039-000026-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000039-000026-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000085-000001-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000085-000001-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000085-000001-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000003-000021-000003-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000003-000021-000003-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000003-000021-000003-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000087-000005-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000087-000005-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000087-000005-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000000-000002-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000000-000002-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000000-000002-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000060-000050-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000060-000050-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000060-000050-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000069-000050-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000069-000050-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000069-000050-g50-08-T.pkl
sleep 600