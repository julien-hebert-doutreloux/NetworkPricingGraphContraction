#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=08:29:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-09/000001-000092-d35-09-P.json ./data/generated/problems/paper/d35-09/000001-000092-d35-09-R.json 293
sleep 300