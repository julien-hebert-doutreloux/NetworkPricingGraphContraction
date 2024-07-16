#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=38:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000028-000093-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000028-000093-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000028-000093-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000019-000026-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000019-000026-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000019-000026-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000017-000025-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000017-000025-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000017-000025-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000011-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000011-000011-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000011-000011-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000029-000096-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000029-000096-g50-04-R.json 74 5 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000029-000096-g50-04-T.pkl
sleep 600