#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=21:01:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000022-000050-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000022-000050-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000022-000050-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000066-000001-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000066-000001-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000066-000001-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000003-000076-000022-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000003-000076-000022-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000003-000076-000022-g50-05-T.pkl
sleep 600