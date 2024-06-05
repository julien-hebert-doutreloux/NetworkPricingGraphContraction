#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000020-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000020-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000020-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000002-000023-000051-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000002-000023-000051-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000002-000023-000051-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000031-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000031-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000031-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000003-000028-000022-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000003-000028-000022-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000003-000028-000022-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000002-000004-000033-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000002-000004-000033-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000002-000004-000033-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000003-000002-000008-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000003-000002-000008-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000003-000002-000008-g40-08-T.pkl
sleep 600