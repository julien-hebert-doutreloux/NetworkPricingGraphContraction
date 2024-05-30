#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:07:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000003-000069-000021-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000003-000069-000021-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000003-000069-000021-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000003-000060-000023-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000003-000060-000023-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000003-000060-000023-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000002-000039-000051-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000002-000039-000051-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000002-000039-000051-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000023-000050-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000023-000050-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000023-000050-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000002-000014-000051-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000002-000014-000051-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000002-000014-000051-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000002-000059-000051-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000002-000059-000051-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000002-000059-000051-g40-09-T.pkl
sleep 600