#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000021-000021-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000021-000021-g45-06-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000021-000021-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000023-000022-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000023-000022-g45-06-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000023-000022-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000004-000005-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000004-000005-g45-06-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000004-000005-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000020-000024-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000020-000024-g45-06-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000020-000024-g45-06-T.pkl
sleep 600