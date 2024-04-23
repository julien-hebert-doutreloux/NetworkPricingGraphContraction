#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=16:21:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d50-06/000007-000101-d50-06-P.pkl ./data/generated/problems/paper/d50-06/000007-000101-d50-06-R.json 578
sleep 60