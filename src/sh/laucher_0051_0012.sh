#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=06:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h30-05/000001-000002-000014-h30-05-P.pkl ./data/generated/problems/paper/h30-05/000001-000002-000014-h30-05-R.json 200 ./data/generated/problems/paper/h30-05/h30-05.json ./data/generated/problems/paper/h30-05/000001-000002-000014-h30-05-T.pkl
sleep 601