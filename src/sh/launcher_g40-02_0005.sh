#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=02:32:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000030-000050-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000030-000050-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000030-000050-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000008-000016-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000008-000016-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000008-000016-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000002-000019-000046-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000002-000019-000046-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000002-000019-000046-g40-02-T.pkl
sleep 600