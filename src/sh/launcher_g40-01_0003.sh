#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:05:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000005-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000005-000001-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000005-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000008-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000008-000001-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000008-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000007-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000007-000001-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000007-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000002-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000002-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000002-000049-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000024-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000024-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000024-000049-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000015-000046-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000015-000046-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000015-000046-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000003-000043-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000003-000043-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000003-000043-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000023-000044-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000023-000044-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000023-000044-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000016-000044-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000016-000044-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000016-000044-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000025-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000025-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000025-000049-g40-01-T.pkl
sleep 600