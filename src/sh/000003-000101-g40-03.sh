#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=06:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000003-000101-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000003-000101-g40-03-R.json 234
sleep 60