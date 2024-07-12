#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000017-000068-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000017-000068-g45-10-R.json 143 1 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000001-000017-000068-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000001-000022-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000001-000022-g45-10-R.json 143 1 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000001-000001-000022-g45-10-T.pkl
sleep 600