#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000025-000082-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000025-000082-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000025-000082-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000006-000012-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000006-000012-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000006-000012-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000014-000024-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000014-000024-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000014-000024-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000005-000012-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000005-000012-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000005-000012-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000018-000023-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000018-000023-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000018-000023-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000000-000005-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000000-000005-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000000-000005-g50-04-T.pkl
sleep 600