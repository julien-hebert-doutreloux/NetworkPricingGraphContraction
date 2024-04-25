#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000097-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000097-g35-05-R.json 117
sleep 60