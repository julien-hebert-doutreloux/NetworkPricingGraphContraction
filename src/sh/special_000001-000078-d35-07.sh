#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=05:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-07/000001-000078-d35-07-P.json ./data/generated/problems/paper/d35-07/000001-000078-d35-07-R.json 205
sleep 300