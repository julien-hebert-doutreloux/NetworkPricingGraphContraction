#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000002-000041-000028-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000002-000041-000028-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000002-000041-000028-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000002-000049-000023-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000002-000049-000023-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000002-000049-000023-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000000-000050-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000000-000050-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000000-000050-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000054-000038-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000054-000038-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000054-000038-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000021-000050-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000021-000050-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000021-000050-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000003-000023-000022-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000003-000023-000022-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000003-000023-000022-g45-02-T.pkl
sleep 600