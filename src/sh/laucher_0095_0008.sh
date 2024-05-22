#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=07:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h45-10/000001-000002-000003-h45-10-P.pkl ./data/generated/problems/paper/h45-10/000001-000002-000003-h45-10-R.json 200 ./data/generated/problems/paper/h45-10/h45-10.json ./data/generated/problems/paper/h45-10/000001-000002-000003-h45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/h45-10/000001-000005-000013-h45-10-P.pkl ./data/generated/problems/paper/h45-10/000001-000005-000013-h45-10-R.json 200 ./data/generated/problems/paper/h45-10/h45-10.json ./data/generated/problems/paper/h45-10/000001-000005-000013-h45-10-T.pkl
sleep 601