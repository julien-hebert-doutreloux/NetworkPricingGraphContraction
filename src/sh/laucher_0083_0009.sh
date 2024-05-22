#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=07:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000003-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000003-000003-g50-01-R.json 200 ./data/generated/problems/paper/g50-01/g50-01.json ./data/generated/problems/paper/g50-01/000001-000003-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000007-000013-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000007-000013-g50-01-R.json 200 ./data/generated/problems/paper/g50-01/g50-01.json ./data/generated/problems/paper/g50-01/000001-000007-000013-g50-01-T.pkl
sleep 601