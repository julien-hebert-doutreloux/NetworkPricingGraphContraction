#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=06:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-01/000001-000072-d35-01-P.json ./data/generated/problems/paper/d35-01/000001-000072-d35-01-R.json 258
sleep 300