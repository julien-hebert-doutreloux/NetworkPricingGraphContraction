#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000101-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000101-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000101-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000014-000030-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000014-000030-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000014-000030-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000042-000051-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000042-000051-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000042-000051-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000003-000024-000016-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000003-000024-000016-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000003-000024-000016-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000122-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000122-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000122-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000041-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000041-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000041-000050-g40-06-T.pkl
sleep 600