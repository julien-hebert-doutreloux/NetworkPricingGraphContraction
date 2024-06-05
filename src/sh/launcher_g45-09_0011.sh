#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000002-000088-000023-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000002-000088-000023-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000002-000088-000023-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000003-000065-000018-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000003-000065-000018-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000003-000065-000018-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000002-000084-000022-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000002-000084-000022-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000002-000084-000022-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000037-000050-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000037-000050-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000037-000050-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000003-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000003-000002-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000003-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000004-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000004-000002-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000004-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000009-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000009-000002-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000009-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000058-000001-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000058-000001-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000058-000001-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000002-000056-000051-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000002-000056-000051-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000002-000056-000051-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000040-000050-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000040-000050-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000040-000050-g45-09-T.pkl
sleep 600