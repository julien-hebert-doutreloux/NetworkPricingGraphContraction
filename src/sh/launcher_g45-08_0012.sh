#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000002-000077-000051-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000002-000077-000051-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000002-000077-000051-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000003-000099-000021-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000003-000099-000021-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000003-000099-000021-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000003-000066-000016-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000003-000066-000016-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000003-000066-000016-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000003-000050-000011-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000003-000050-000011-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000003-000050-000011-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000028-000050-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000028-000050-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000028-000050-g45-08-T.pkl
sleep 600