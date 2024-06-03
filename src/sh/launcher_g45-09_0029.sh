#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=19:37:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000002-000090-000024-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000002-000090-000024-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000002-000090-000024-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000003-000042-000021-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000003-000042-000021-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000003-000042-000021-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000002-000088-000023-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000002-000088-000023-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000002-000088-000023-g45-09-T.pkl
sleep 600