#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000024-000083-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000024-000083-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000024-000083-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000001-000005-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000001-000005-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000001-000005-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000035-000070-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000035-000070-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000035-000070-g50-04-T.pkl
sleep 600