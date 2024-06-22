#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000001-000001-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000001-000001-g50-07-R.json 154 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000001-000001-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000000-000001-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000000-000001-g50-07-R.json 154 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000000-000001-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000012-000032-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000012-000032-g50-07-R.json 154 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000012-000032-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000011-000002-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000011-000002-g50-07-R.json 154 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000011-000002-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000030-000075-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000030-000075-g50-07-R.json 154 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000030-000075-g50-07-T.pkl
sleep 600