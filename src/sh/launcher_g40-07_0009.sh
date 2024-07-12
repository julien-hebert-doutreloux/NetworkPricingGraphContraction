#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=22:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000012-000076-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000012-000076-g40-07-R.json 112 1 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000012-000076-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000000-000029-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000000-000029-g40-07-R.json 112 1 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000000-000029-g40-07-T.pkl
sleep 600