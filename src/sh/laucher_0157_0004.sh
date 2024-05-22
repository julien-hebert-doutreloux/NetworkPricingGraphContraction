#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=40:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000003-000003-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000003-000003-g45-04-R.json 200 ./data/generated/problems/paper/g45-04/g45-04.json ./data/generated/problems/paper/g45-04/000001-000003-000003-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000009-000088-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000009-000088-g45-04-R.json 200 ./data/generated/problems/paper/g45-04/g45-04.json ./data/generated/problems/paper/g45-04/000001-000009-000088-g45-04-T.pkl
sleep 601