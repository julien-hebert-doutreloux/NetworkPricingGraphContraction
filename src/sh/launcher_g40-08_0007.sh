#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000101-000017-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000101-000017-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000101-000017-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000094-000014-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000094-000014-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000094-000014-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000002-000085-000023-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000002-000085-000023-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000002-000085-000023-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000017-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000017-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000017-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000000-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000000-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000000-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000056-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000056-000003-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000056-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000072-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000072-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000072-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000002-000018-000051-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000002-000018-000051-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000002-000018-000051-g40-08-T.pkl
sleep 600