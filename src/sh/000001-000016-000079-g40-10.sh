#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000016-000079-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000016-000079-g40-10-R.json 237
sleep 600