#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=18:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000093-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000093-g35-08-R.json 716
sleep 300