#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000033-000062-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000033-000062-g40-06-R.json 39 4 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000033-000062-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000016-000040-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000016-000040-g40-06-R.json 39 4 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000016-000040-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000022-000017-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000022-000017-g40-06-R.json 39 4 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000022-000017-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000007-000026-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000007-000026-g40-06-R.json 39 4 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000007-000026-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000030-000090-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000030-000090-g40-06-R.json 39 4 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000030-000090-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000032-000067-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000032-000067-g40-06-R.json 39 4 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000032-000067-g40-06-T.pkl
sleep 600