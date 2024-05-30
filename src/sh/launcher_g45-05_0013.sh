#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000075-000050-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000075-000050-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000075-000050-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000003-000010-000002-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000003-000010-000002-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000003-000010-000002-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000026-000001-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000026-000001-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000026-000001-g45-05-T.pkl
sleep 600