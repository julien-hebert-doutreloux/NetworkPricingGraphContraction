#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=20:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h30-03/000001-000011-000045-h30-03-P.pkl ./data/generated/problems/paper/h30-03/000001-000011-000045-h30-03-R.json 200 ./data/generated/problems/paper/h30-03/h30-03.json ./data/generated/problems/paper/h30-03/000001-000011-000045-h30-03-T.pkl
sleep 601