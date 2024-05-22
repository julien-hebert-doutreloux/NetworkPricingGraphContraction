#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=13:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000021-000071-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000021-000071-g45-08-R.json 83.346870365 ./data/generated/problems/paper/g45-08/g45-08.json ./data/generated/problems/paper/g45-08/000001-000021-000071-g45-08-T.pkl
sleep 601