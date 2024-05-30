#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=19:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000000-000002-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000000-000002-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000000-000002-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000002-000023-000051-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000002-000023-000051-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000002-000023-000051-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000015-000050-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000015-000050-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000015-000050-g40-10-T.pkl
sleep 600