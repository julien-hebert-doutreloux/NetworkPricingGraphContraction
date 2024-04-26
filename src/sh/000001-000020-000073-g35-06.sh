#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000020-000073-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000020-000073-g35-06-R.json 113
sleep 600