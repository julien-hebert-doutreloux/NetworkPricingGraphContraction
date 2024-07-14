#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=32:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000037-000018-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000037-000018-g50-09-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000037-000018-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000038-000014-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000038-000014-g50-09-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000038-000014-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000001-000013-000058-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000001-000013-000058-g50-09-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000001-000013-000058-g50-09-T.pkl
sleep 600