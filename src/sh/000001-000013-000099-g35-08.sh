#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=19:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000013-000099-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000013-000099-g35-08-R.json 716
sleep 600