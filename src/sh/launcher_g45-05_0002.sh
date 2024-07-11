#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=32:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000026-000057-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000026-000057-g45-05-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000026-000057-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000003-000001-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000003-000001-g45-05-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000003-000001-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000025-000049-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000025-000049-g45-05-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000025-000049-g45-05-T.pkl
sleep 600