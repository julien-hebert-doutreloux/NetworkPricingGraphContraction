#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000003-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000003-000002-g35-10-R.json 53.023777821 ./data/generated/problems/paper/g35-10/g35-10.json ./data/generated/problems/paper/g35-10/000001-000003-000002-g35-10-T.pkl
sleep 601