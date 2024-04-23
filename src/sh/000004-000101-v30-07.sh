#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=27:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-07/000004-000101-v30-07-P.pkl ./data/generated/problems/paper/v30-07/000004-000101-v30-07-R.json 974
sleep 60