#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000019-000050-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000019-000050-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000019-000050-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000057-000050-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000057-000050-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000057-000050-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000002-000067-000022-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000002-000067-000022-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000002-000067-000022-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000082-000050-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000082-000050-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000082-000050-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000003-000016-000019-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000003-000016-000019-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000003-000016-000019-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000005-000050-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000005-000050-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000005-000050-g45-06-T.pkl
sleep 600