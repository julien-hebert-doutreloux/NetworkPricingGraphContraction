#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=11:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-10/000001-000002-000096-d35-10-P.pkl ./data/generated/problems/paper/d35-10/000001-000002-000096-d35-10-R.json 438
sleep 600