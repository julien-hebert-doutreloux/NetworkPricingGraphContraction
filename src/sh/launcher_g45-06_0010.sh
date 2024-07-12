#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=35:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000017-000014-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000017-000014-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000017-000014-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000024-000083-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000024-000083-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000024-000083-g45-06-T.pkl
sleep 600