#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=39:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000026-000010-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000026-000010-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000026-000010-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000030-000005-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000030-000005-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000030-000005-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000034-000017-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000034-000017-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000034-000017-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000020-000005-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000020-000005-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000020-000005-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000005-000070-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000005-000070-g50-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000005-000070-g50-09-T.pkl
sleep 600