#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-10/000001-000085-h35-10-P.pkl ./data/generated/problems/paper/h35-10/000001-000085-h35-10-R.json 151
sleep 300