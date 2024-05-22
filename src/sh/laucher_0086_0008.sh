#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=06:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-10/000001-000009-000050-h35-10-P.pkl ./data/generated/problems/paper/h35-10/000001-000009-000050-h35-10-R.json 54.644208253 ./data/generated/problems/paper/h35-10/h35-10.json ./data/generated/problems/paper/h35-10/000001-000009-000050-h35-10-T.pkl
sleep 601