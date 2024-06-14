#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000021-000036-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000021-000036-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000021-000036-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000072-000051-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000072-000051-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000072-000051-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000049-000051-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000049-000051-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000049-000051-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000027-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000027-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000027-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000093-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000093-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000093-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000025-000051-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000025-000051-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000025-000051-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000090-000018-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000090-000018-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000090-000018-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000041-000020-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000041-000020-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000041-000020-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000018-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000018-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000018-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000006-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000006-000002-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000006-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000085-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000085-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000085-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000087-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000087-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000087-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000039-000050-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000039-000050-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000039-000050-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000096-000029-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000096-000029-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000096-000029-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000064-000051-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000064-000051-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000064-000051-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000050-000020-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000050-000020-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000050-000020-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000068-000051-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000068-000051-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000068-000051-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000008-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000008-000002-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000008-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000002-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000002-000002-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000002-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000084-000024-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000084-000024-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000084-000024-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000023-000030-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000023-000030-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000023-000030-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000010-000032-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000010-000032-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000010-000032-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000003-000029-000020-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000003-000029-000020-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000003-000029-000020-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000002-000046-000051-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000002-000046-000051-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000002-000046-000051-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000070-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000070-000001-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000070-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000013-000022-g40-01-T.pkl
sleep 600