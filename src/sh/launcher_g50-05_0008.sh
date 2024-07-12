#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=48:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000008-000002-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000008-000002-g50-05-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000008-000002-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000002-000001-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000002-000001-g50-05-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000002-000001-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000013-000029-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000013-000029-g50-05-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000013-000029-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000004-000002-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000004-000002-g50-05-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000004-000002-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000020-000099-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000020-000099-g50-05-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000020-000099-g50-05-T.pkl
sleep 600