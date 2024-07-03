#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=11:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000003-000003-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000003-000003-g40-03-R.json 131 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000003-000003-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000036-000066-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000036-000066-g40-03-R.json 131 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000036-000066-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000009-000003-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000009-000003-g40-03-R.json 131 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000009-000003-g40-03-T.pkl
sleep 600