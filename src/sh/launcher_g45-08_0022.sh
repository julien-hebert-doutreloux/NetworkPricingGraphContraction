#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000019-000003-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000019-000003-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000019-000003-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000076-000050-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000076-000050-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000076-000050-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000031-000027-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000031-000027-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000031-000027-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000003-000063-000022-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000003-000063-000022-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000003-000063-000022-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000038-000030-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000038-000030-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000038-000030-g45-08-T.pkl
sleep 600