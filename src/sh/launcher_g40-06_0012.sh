#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000015-000030-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000015-000030-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000015-000030-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000025-000030-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000025-000030-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000025-000030-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000007-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000007-000007-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000007-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000031-000017-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000031-000017-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000031-000017-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000008-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000008-000007-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000008-000007-g40-06-T.pkl
sleep 600