#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=01:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000005-000042-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000005-000042-g35-10-R.json 156
sleep 60