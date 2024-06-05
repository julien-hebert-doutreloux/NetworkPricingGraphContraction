#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000039-000050-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000039-000050-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000039-000050-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000046-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000046-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000046-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000002-000003-000026-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000002-000003-000026-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000002-000003-000026-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000096-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000096-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000096-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000110-000018-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000110-000018-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000110-000018-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000095-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000095-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000095-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000003-000015-000001-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000003-000015-000001-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000003-000015-000001-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000003-000012-000009-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000003-000012-000009-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000003-000012-000009-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000003-000033-000016-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000003-000033-000016-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000003-000033-000016-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000002-000089-000016-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000002-000089-000016-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000002-000089-000016-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000114-000020-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000114-000020-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000114-000020-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000076-000019-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000076-000019-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000076-000019-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000101-000032-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000101-000032-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000101-000032-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000043-000050-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000043-000050-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000043-000050-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000002-000007-000020-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000002-000007-000020-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000002-000007-000020-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000062-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000062-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000062-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000002-000064-000031-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000002-000064-000031-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000002-000064-000031-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000002-000044-000051-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000002-000044-000051-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000002-000044-000051-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000054-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000054-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000054-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000002-000005-000025-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000002-000005-000025-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000002-000005-000025-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000002-000036-000051-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000002-000036-000051-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000002-000036-000051-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000090-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000090-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000090-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000038-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000038-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000038-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000098-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000098-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000098-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000068-000050-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000068-000050-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000068-000050-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000113-000015-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000113-000015-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000113-000015-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000002-000014-000051-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000002-000014-000051-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000002-000014-000051-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000108-000034-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000108-000034-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000108-000034-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000003-000041-000023-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000003-000041-000023-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000003-000041-000023-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000050-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000050-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000050-000005-g40-05-T.pkl
sleep 600