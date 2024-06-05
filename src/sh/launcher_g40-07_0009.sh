#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000003-000036-000012-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000003-000036-000012-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000003-000036-000012-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000003-000054-000021-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000003-000054-000021-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000003-000054-000021-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000076-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000076-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000076-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000002-000056-000051-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000002-000056-000051-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000002-000056-000051-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000002-000011-000008-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000002-000011-000008-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000002-000011-000008-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000022-000020-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000022-000020-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000022-000020-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000067-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000067-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000067-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000003-000066-000022-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000003-000066-000022-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000003-000066-000022-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000002-000017-000026-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000002-000017-000026-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000002-000017-000026-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000003-000072-000022-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000003-000072-000022-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000003-000072-000022-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000002-000077-000051-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000002-000077-000051-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000002-000077-000051-g40-07-T.pkl
sleep 600