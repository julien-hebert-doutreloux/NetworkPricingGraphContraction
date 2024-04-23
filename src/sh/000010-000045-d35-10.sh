#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=05:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-10/000010-000045-d35-10-P.pkl ./data/generated/problems/paper/d35-10/000010-000045-d35-10-R.json 438
sleep 60