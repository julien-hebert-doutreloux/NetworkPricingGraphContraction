#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000012-000080-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000012-000080-g35-02-R.json 122
sleep 600