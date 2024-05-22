#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=04:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000001-000045-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000001-000045-g40-06-R.json 41.332847693 ./data/generated/problems/paper/g40-06/g40-06.json ./data/generated/problems/paper/g40-06/000001-000001-000045-g40-06-T.pkl
sleep 601