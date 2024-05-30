#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=23:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000003-000088-000016-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000003-000088-000016-g50-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000003-000088-000016-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000003-000093-000016-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000003-000093-000016-g50-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000003-000093-000016-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000019-000050-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000019-000050-g50-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000019-000050-g50-09-T.pkl
sleep 600