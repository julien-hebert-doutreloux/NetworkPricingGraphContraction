#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=06:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000003-000078-000023-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000003-000078-000023-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000003-000078-000023-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000003-000041-000023-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000003-000041-000023-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000003-000041-000023-g40-05-T.pkl
sleep 600