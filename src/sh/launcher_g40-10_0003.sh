#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000003-000033-000014-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000003-000033-000014-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000003-000033-000014-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000003-000021-000006-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000003-000021-000006-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000003-000021-000006-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000088-000050-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000088-000050-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000088-000050-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000003-000048-000019-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000003-000048-000019-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000003-000048-000019-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000003-000051-000023-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000003-000051-000023-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000003-000051-000023-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000049-000050-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000049-000050-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000049-000050-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000070-000050-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000070-000050-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000070-000050-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000072-000001-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000072-000001-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000072-000001-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000002-000063-000051-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000002-000063-000051-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000002-000063-000051-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000004-000002-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000004-000002-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000004-000002-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000084-000050-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000084-000050-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000084-000050-g40-10-T.pkl
sleep 600