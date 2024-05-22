#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=25:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-07/000001-000012-000056-h35-07-P.pkl ./data/generated/problems/paper/h35-07/000001-000012-000056-h35-07-R.json 200 ./data/generated/problems/paper/h35-07/h35-07.json ./data/generated/problems/paper/h35-07/000001-000012-000056-h35-07-T.pkl
sleep 601