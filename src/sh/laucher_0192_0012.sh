#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=42:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h50-08/000001-000022-000096-h50-08-P.pkl ./data/generated/problems/paper/h50-08/000001-000022-000096-h50-08-R.json 200 ./data/generated/problems/paper/h50-08/h50-08.json ./data/generated/problems/paper/h50-08/000001-000022-000096-h50-08-T.pkl
sleep 601