#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=19:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000003-000097-000018-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000003-000097-000018-g40-03-R.json 151 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000003-000097-000018-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000003-000028-000022-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000003-000028-000022-g40-03-R.json 151 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000003-000028-000022-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000002-000022-000051-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000002-000022-000051-g40-03-R.json 151 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000002-000022-000051-g40-03-T.pkl
sleep 600