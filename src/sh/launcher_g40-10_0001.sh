#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=36:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000007-000002-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000007-000002-g40-10-R.json 139 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000007-000002-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000022-000096-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000022-000096-g40-10-R.json 139 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000022-000096-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000030-000068-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000030-000068-g40-10-R.json 139 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000030-000068-g40-10-T.pkl
sleep 600