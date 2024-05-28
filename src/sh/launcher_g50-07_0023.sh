#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000001-000001-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000001-000001-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000001-000001-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000000-000001-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000000-000001-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000000-000001-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000012-000046-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000012-000046-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000012-000046-g50-07-T.pkl
sleep 600