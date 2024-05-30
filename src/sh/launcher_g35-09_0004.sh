#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000022-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000022-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000022-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000028-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000028-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000028-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000026-000021-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000026-000021-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000026-000021-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000025-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000025-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000025-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000079-000012-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000079-000012-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000079-000012-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000063-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000063-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000063-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000002-000015-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000002-000015-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000002-000015-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000035-000027-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000035-000027-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000035-000027-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000046-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000046-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000046-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000013-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000013-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000013-000051-g35-09-T.pkl
sleep 600