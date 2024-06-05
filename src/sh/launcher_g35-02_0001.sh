#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000002-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000002-000002-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000002-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000057-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000057-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000057-000051-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000060-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000060-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000060-000051-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000029-000018-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000029-000018-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000029-000018-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000064-000021-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000064-000021-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000064-000021-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000074-000020-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000074-000020-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000074-000020-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000023-000019-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000023-000019-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000023-000019-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000009-000026-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000009-000026-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000009-000026-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000077-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000077-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000077-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000019-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000019-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000019-000051-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000075-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000075-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000075-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000012-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000012-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000012-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000003-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000003-000002-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000003-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000061-000023-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000061-000023-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000061-000023-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000022-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000022-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000022-000051-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000071-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000071-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000071-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000028-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000028-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000028-000051-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000032-000017-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000032-000017-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000032-000017-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000066-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000066-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000066-000051-g35-02-T.pkl
sleep 600