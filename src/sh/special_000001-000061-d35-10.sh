#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=08:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-10/000001-000061-d35-10-P.json ./data/generated/problems/paper/d35-10/000001-000061-d35-10-R.json 438
sleep 300