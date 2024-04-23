#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000004-000101-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000004-000101-g35-07-R.json 196
sleep 60