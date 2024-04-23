#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=02:04:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000005-000057-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000005-000057-g35-02-R.json 122
sleep 60