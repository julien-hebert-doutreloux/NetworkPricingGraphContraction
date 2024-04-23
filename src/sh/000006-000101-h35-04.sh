#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=24:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-04/000006-000101-h35-04-P.pkl ./data/generated/problems/paper/h35-04/000006-000101-h35-04-R.json 884
sleep 60