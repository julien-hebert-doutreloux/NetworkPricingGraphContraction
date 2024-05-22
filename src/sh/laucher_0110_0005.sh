#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=25:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000004-000099-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000004-000099-g40-07-R.json 116.543948277 ./data/generated/problems/paper/g40-07/g40-07.json ./data/generated/problems/paper/g40-07/000001-000004-000099-g40-07-T.pkl
sleep 601