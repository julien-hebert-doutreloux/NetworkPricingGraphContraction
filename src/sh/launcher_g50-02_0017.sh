#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:05:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000003-000070-000019-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000003-000070-000019-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000003-000070-000019-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000072-000050-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000072-000050-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000072-000050-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000025-000002-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000025-000002-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000025-000002-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000021-000002-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000021-000002-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000021-000002-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000030-000034-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000030-000034-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000030-000034-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000011-000024-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000011-000024-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000011-000024-g50-02-T.pkl
sleep 600