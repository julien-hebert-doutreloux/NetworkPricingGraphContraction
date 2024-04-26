#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000004-000085-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000004-000085-g40-10-R.json 237
sleep 600