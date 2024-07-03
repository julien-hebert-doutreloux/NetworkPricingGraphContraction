#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=52:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000030-000090-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000030-000090-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000030-000090-g35-08-T.pkl
sleep 600