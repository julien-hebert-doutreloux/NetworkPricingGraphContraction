#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=05:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000015-000096-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000015-000096-g35-03-R.json 209
sleep 600