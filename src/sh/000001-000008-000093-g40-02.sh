#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000008-000093-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000008-000093-g40-02-R.json 119
sleep 600