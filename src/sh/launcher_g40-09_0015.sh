#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=14:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000079-000050-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000079-000050-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000079-000050-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000002-000078-000020-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000002-000078-000020-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000002-000078-000020-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000081-000050-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000081-000050-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000081-000050-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000042-000050-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000042-000050-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000042-000050-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000097-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000097-000002-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000097-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000003-000031-000021-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000003-000031-000021-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000003-000031-000021-g40-09-T.pkl
sleep 600