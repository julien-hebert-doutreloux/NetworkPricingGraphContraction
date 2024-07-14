#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000025-000053-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000025-000053-g40-02-R.json 18 3 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000025-000053-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000024-000062-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000024-000062-g40-02-R.json 18 3 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000024-000062-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000019-000063-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000019-000063-g40-02-R.json 18 3 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000019-000063-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000021-000084-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000021-000084-g40-02-R.json 18 3 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000021-000084-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000017-000058-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000017-000058-g40-02-R.json 18 3 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000017-000058-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000009-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000009-000002-g40-02-R.json 18 3 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000009-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000022-000088-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000022-000088-g40-02-R.json 18 3 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000022-000088-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000004-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000004-000002-g40-02-R.json 18 3 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000004-000002-g40-02-T.pkl
sleep 600