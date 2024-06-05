#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000063-000051-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000063-000051-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000063-000051-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000012-000050-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000012-000050-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000012-000050-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000020-000050-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000020-000050-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000020-000050-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000047-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000047-000001-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000047-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000074-000050-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000074-000050-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000074-000050-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000088-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000088-000002-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000088-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000003-000061-000007-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000003-000061-000007-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000003-000061-000007-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000090-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000090-000002-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000090-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000003-000058-000012-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000003-000058-000012-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000003-000058-000012-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000046-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000046-000001-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000046-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000071-000018-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000071-000018-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000071-000018-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000003-000054-000022-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000003-000054-000022-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000003-000054-000022-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000015-000019-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000015-000019-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000015-000019-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000076-000050-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000076-000050-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000076-000050-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000003-000025-000005-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000003-000025-000005-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000003-000025-000005-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000003-000064-000014-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000003-000064-000014-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000003-000064-000014-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000003-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000003-000002-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000003-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000087-000018-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000087-000018-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000087-000018-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000084-000050-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000084-000050-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000084-000050-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000034-000051-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000034-000051-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000034-000051-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000021-000051-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000021-000051-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000021-000051-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000011-000048-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000011-000048-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000011-000048-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000014-000050-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000014-000050-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000014-000050-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000049-000051-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000049-000051-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000049-000051-g40-02-T.pkl
sleep 600