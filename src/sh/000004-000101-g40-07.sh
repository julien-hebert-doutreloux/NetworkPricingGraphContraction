#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=06:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000004-000101-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000004-000101-g40-07-R.json 217
sleep 60