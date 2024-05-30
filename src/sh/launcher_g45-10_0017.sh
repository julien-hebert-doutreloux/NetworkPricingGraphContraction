#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000006-000050-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000006-000050-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000001-000006-000050-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000003-000028-000008-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000003-000028-000008-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000003-000028-000008-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000002-000003-000024-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000002-000003-000024-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000002-000003-000024-g45-10-T.pkl
sleep 600