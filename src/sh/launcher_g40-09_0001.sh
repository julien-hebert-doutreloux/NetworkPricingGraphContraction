#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=46:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000005-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000005-000002-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000005-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000015-000020-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000015-000020-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000015-000020-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000021-000095-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000021-000095-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000021-000095-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000009-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000009-000002-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000009-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000023-000091-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000023-000091-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000023-000091-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000000-000001-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000000-000001-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000000-000001-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000020-000099-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000020-000099-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000020-000099-g40-09-T.pkl
sleep 600