#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:11:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000023-000030-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000023-000030-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000023-000030-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000010-000032-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000010-000032-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000010-000032-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000029-000020-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000029-000020-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000029-000020-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000046-000051-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000046-000051-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000046-000051-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000070-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000070-000001-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000070-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000095-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000095-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000095-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000082-000026-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000082-000026-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000082-000026-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000088-000023-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000088-000023-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000088-000023-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000071-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000071-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000071-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000051-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000051-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000051-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000065-000022-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000065-000022-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000065-000022-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000038-000015-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000038-000015-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000038-000015-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000052-000051-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000052-000051-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000052-000051-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000081-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000081-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000081-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000054-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000054-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000054-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000003-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000003-000002-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000003-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000058-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000058-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000058-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000066-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000066-000001-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000066-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000053-000020-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000053-000020-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000053-000020-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000044-000022-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000044-000022-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000044-000022-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000074-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000074-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000074-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000078-000026-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000078-000026-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000078-000026-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000062-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000062-000001-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000062-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000056-000023-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000056-000023-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000056-000023-g40-01-T.pkl
sleep 600