#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000002-000093-000031-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000002-000093-000031-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000002-000093-000031-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000050-000001-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000050-000001-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000050-000001-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000009-000002-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000009-000002-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000009-000002-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000002-000026-000051-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000002-000026-000051-g50-07-R.json 150 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000002-000026-000051-g50-07-T.pkl
sleep 600