#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000003-000066-000023-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000003-000066-000023-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000003-000066-000023-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000003-000043-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000003-000043-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000003-000043-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000016-000026-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000016-000026-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000016-000026-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000044-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000044-000007-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000044-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000124-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000124-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000124-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000083-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000083-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000083-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000032-000051-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000032-000051-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000032-000051-g40-06-T.pkl
sleep 600