#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=23:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-04/000001-000020-000097-h35-04-P.pkl ./data/generated/problems/paper/h35-04/000001-000020-000097-h35-04-R.json 884
sleep 600