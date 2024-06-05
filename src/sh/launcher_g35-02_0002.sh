#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000013-000042-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000013-000042-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000013-000042-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000035-000021-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000035-000021-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000035-000021-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000088-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000088-000002-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000088-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000063-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000063-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000063-000051-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000024-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000024-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000024-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000055-000021-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000055-000021-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000055-000021-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000059-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000059-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000059-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000073-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000073-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000073-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000044-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000044-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000044-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000020-000004-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000020-000004-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000020-000004-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000046-000021-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000046-000021-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000046-000021-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000021-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000021-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000021-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000082-000020-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000082-000020-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000082-000020-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000087-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000087-000002-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000087-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000000-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000000-000002-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000000-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000051-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000051-000001-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000051-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000078-000032-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000078-000032-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000078-000032-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000079-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000079-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000079-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000047-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000047-000001-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000047-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000058-000021-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000058-000021-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000058-000021-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000043-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000043-000001-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000043-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000053-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000053-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000053-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000014-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000014-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000014-000050-g35-02-T.pkl
sleep 600