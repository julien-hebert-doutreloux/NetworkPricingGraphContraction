#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=10:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000010-000098-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000010-000098-g40-09-R.json 49.302119762 ./data/generated/problems/paper/g40-09/g40-09.json ./data/generated/problems/paper/g40-09/000001-000010-000098-g40-09-T.pkl
sleep 601