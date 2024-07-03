#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000009-000002-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000009-000002-g40-10-R.json 139 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000009-000002-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000016-000088-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000016-000088-g40-10-R.json 139 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000016-000088-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000005-000002-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000005-000002-g40-10-R.json 139 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000005-000002-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000024-000068-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000024-000068-g40-10-R.json 139 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000024-000068-g40-10-T.pkl
sleep 600