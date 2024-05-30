#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:32:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000058-000050-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000058-000050-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000058-000050-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000002-000008-000025-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000002-000008-000025-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000002-000008-000025-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000002-000002-000046-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000002-000002-000046-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000002-000002-000046-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000003-000102-000023-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000003-000102-000023-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000003-000102-000023-g45-08-T.pkl
sleep 600