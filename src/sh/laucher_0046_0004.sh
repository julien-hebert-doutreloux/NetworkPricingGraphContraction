#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=02:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000019-000075-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000019-000075-g35-06-R.json 14.876039898 ./data/generated/problems/paper/g35-06/g35-06.json ./data/generated/problems/paper/g35-06/000001-000019-000075-g35-06-T.pkl
sleep 601