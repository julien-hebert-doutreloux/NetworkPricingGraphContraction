#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:41:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000016-000059-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000016-000059-g35-10-R.json 156
sleep 600