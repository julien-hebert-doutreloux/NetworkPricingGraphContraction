#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=47:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000007-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000007-000002-g45-09-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000007-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000008-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000008-000002-g45-09-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000008-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000024-000054-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000024-000054-g45-09-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000024-000054-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000031-000071-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000031-000071-g45-09-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000031-000071-g45-09-T.pkl
sleep 600