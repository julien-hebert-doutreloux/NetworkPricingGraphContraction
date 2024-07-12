#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=42:41:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000010-000002-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000010-000002-g50-07-R.json 154 1 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000010-000002-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000007-000002-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000007-000002-g50-07-R.json 154 1 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000007-000002-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000009-000002-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000009-000002-g50-07-R.json 154 1 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000009-000002-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000018-000072-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000018-000072-g50-07-R.json 154 1 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000018-000072-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000025-000070-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000025-000070-g50-07-R.json 154 1 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000025-000070-g50-07-T.pkl
sleep 600