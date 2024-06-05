#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=11:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000068-000013-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000068-000013-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000068-000013-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000078-000022-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000078-000022-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000078-000022-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000040-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000040-000003-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000040-000003-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000008-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000008-000003-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000008-000003-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000002-000046-000032-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000002-000046-000032-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000002-000046-000032-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000002-000048-000031-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000002-000048-000031-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000002-000048-000031-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000002-000089-000051-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000002-000089-000051-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000002-000089-000051-g45-06-T.pkl
sleep 600