#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=02:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h30-10/000001-000001-000002-h30-10-P.pkl ./data/generated/problems/paper/h30-10/000001-000001-000002-h30-10-R.json 200 ./data/generated/problems/paper/h30-10/h30-10.json ./data/generated/problems/paper/h30-10/000001-000001-000002-h30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/h30-10/000001-000002-000002-h30-10-P.pkl ./data/generated/problems/paper/h30-10/000001-000002-000002-h30-10-R.json 200 ./data/generated/problems/paper/h30-10/h30-10.json ./data/generated/problems/paper/h30-10/000001-000002-000002-h30-10-T.pkl
sleep 601