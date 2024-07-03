#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=38:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000004-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000004-000002-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000004-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000016-000091-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000016-000091-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000016-000091-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000021-000087-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000021-000087-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000021-000087-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000003-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000003-000001-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000003-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000014-000021-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000014-000021-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000014-000021-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000020-000097-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000020-000097-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000020-000097-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000007-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000007-000002-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000007-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000017-000073-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000017-000073-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000017-000073-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000022-000098-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000022-000098-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000022-000098-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000010-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000010-000002-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000010-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000024-000071-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000024-000071-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000024-000071-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000012-000030-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000012-000030-g40-01-R.json 13 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000012-000030-g40-01-T.pkl
sleep 600