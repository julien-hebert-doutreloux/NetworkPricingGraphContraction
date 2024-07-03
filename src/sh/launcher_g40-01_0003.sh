#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=13:04:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000023-000089-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000023-000089-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000023-000089-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000015-000022-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000015-000022-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000015-000022-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000031-000074-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000031-000074-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000031-000074-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000005-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000005-000002-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000005-000002-g40-01-T.pkl
sleep 600