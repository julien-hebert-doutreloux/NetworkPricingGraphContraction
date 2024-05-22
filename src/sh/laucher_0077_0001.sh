#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=03:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h30-06/000001-000002-000003-h30-06-P.pkl ./data/generated/problems/paper/h30-06/000001-000002-000003-h30-06-R.json 200 ./data/generated/problems/paper/h30-06/h30-06.json ./data/generated/problems/paper/h30-06/000001-000002-000003-h30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/h30-06/000001-000000-000005-h30-06-P.pkl ./data/generated/problems/paper/h30-06/000001-000000-000005-h30-06-R.json 200 ./data/generated/problems/paper/h30-06/h30-06.json ./data/generated/problems/paper/h30-06/000001-000000-000005-h30-06-T.pkl
sleep 601