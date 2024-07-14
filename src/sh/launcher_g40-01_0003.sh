#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000018-000068-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000018-000068-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000018-000068-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000002-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000002-000001-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000002-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000001-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000001-000001-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000001-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000030-000068-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000030-000068-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000030-000068-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000023-000089-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000023-000089-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000023-000089-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000015-000022-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000015-000022-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000015-000022-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000031-000074-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000031-000074-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000031-000074-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000005-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000005-000002-g40-01-R.json 13 3 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000005-000002-g40-01-T.pkl
sleep 600