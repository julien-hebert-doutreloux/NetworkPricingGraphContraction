#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=02:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-04/000001-000010-000052-d35-04-P.pkl ./data/generated/problems/paper/d35-04/000001-000010-000052-d35-04-R.json 156
sleep 600