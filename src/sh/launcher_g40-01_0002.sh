#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000012-000030-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000012-000030-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000012-000030-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000006-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000006-000002-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000006-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000011-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000011-000002-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000011-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000029-000068-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000029-000068-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000029-000068-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000008-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000008-000002-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000008-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000028-000071-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000028-000071-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000028-000071-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000019-000081-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000019-000081-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000019-000081-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000026-000068-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000026-000068-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000026-000068-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000025-000069-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000025-000069-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000025-000069-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000000-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000000-000001-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000000-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000027-000064-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000027-000064-g40-01-R.json 13 1 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000027-000064-g40-01-T.pkl
sleep 600