#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=30:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000013-000013-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000013-000013-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000013-000013-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000037-000070-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000037-000070-g40-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000037-000070-g40-08-T.pkl
sleep 600