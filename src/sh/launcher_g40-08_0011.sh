#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=47:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000010-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000010-000003-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000010-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000005-000005-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000005-000005-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000005-000005-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000002-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000002-000003-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000002-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000009-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000009-000003-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000009-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000023-000018-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000023-000018-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000023-000018-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000007-000005-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000007-000005-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000007-000005-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000029-000091-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000029-000091-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000029-000091-g40-08-T.pkl
sleep 600