#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=04:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000007-000098-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000007-000098-g35-10-R.json 156
sleep 600