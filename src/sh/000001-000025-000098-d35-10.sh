#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=12:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-10/000001-000025-000098-d35-10-P.pkl ./data/generated/problems/paper/d35-10/000001-000025-000098-d35-10-R.json 438
sleep 600