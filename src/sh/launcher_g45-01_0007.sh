#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:04:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000099-000050-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000099-000050-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000099-000050-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000003-000076-000023-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000003-000076-000023-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000003-000076-000023-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000104-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000104-000014-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000104-000014-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000085-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000085-000003-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000085-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000013-000040-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000013-000040-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000013-000040-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000078-000050-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000078-000050-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000078-000050-g45-01-T.pkl
sleep 600