#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=27:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000005-000088-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000005-000088-g45-10-R.json 142.091734587 ./data/generated/problems/paper/g45-10/g45-10.json ./data/generated/problems/paper/g45-10/000001-000005-000088-g45-10-T.pkl
sleep 601