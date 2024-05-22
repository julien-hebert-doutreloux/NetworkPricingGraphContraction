#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=10:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000001-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000001-000002-g35-04-R.json 67.472126547 ./data/generated/problems/paper/g35-04/g35-04.json ./data/generated/problems/paper/g35-04/000001-000001-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000012-000067-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000012-000067-g35-04-R.json 67.472126547 ./data/generated/problems/paper/g35-04/g35-04.json ./data/generated/problems/paper/g35-04/000001-000012-000067-g35-04-T.pkl
sleep 601