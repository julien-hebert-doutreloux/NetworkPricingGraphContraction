#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000019-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000019-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000019-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000065-000051-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000065-000051-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000065-000051-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000109-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000109-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000109-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000075-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000075-000007-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000075-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000018-000030-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000018-000030-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000018-000030-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000107-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000107-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000107-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000003-000048-000016-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000003-000048-000016-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000003-000048-000016-g40-06-T.pkl
sleep 600