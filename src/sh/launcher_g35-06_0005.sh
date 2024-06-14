#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=08:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000026-000021-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000026-000021-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000026-000021-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000015-000005-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000015-000005-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000015-000005-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000043-000051-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000043-000051-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000043-000051-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000092-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000092-000014-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000092-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000088-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000088-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000088-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000030-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000030-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000030-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000060-000005-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000060-000005-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000060-000005-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000083-000023-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000083-000023-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000083-000023-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000039-000023-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000039-000023-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000039-000023-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000094-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000094-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000094-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000004-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000004-000014-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000004-000014-g35-06-T.pkl
sleep 600