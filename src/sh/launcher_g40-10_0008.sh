#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000024-000068-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000024-000068-g40-10-R.json 139 5 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000024-000068-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000027-000062-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000027-000062-g40-10-R.json 139 5 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000027-000062-g40-10-T.pkl
sleep 600