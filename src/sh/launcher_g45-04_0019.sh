#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000101-000050-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000101-000050-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000101-000050-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000002-000088-000013-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000002-000088-000013-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000002-000088-000013-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000003-000082-000002-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000003-000082-000002-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000003-000082-000002-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000003-000103-000001-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000003-000103-000001-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000003-000103-000001-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000068-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000068-000014-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000068-000014-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000030-000005-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000030-000005-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000030-000005-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000064-000050-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000064-000050-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000064-000050-g45-04-T.pkl
sleep 600