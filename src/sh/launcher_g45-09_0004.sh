#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000010-000019-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000010-000019-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000010-000019-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000001-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000001-000002-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000001-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000012-000019-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000012-000019-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000012-000019-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000021-000050-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000021-000050-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000021-000050-g45-09-T.pkl
sleep 600