#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000012-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000012-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000012-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000041-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000041-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000041-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000107-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000107-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000107-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000100-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000100-000014-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000100-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000089-000018-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000089-000018-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000089-000018-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000086-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000086-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000086-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000044-000021-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000044-000021-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000044-000021-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000066-000051-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000066-000051-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000066-000051-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000091-000032-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000091-000032-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000091-000032-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000072-000023-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000072-000023-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000072-000023-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000013-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000013-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000013-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000080-000020-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000080-000020-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000080-000020-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000084-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000084-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000084-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000062-000051-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000062-000051-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000062-000051-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000017-000051-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000017-000051-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000017-000051-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000106-000025-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000106-000025-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000106-000025-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000067-000023-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000067-000023-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000067-000023-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000057-000051-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000057-000051-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000057-000051-g35-06-T.pkl
sleep 600