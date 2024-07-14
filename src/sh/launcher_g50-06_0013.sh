#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=57:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000001-000020-000028-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000001-000020-000028-g50-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000001-000020-000028-g50-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000001-000009-000003-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000001-000009-000003-g50-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000001-000009-000003-g50-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000001-000022-000028-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000001-000022-000028-g50-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000001-000022-000028-g50-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000001-000004-000005-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000001-000004-000005-g50-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000001-000004-000005-g50-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000001-000029-000095-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000001-000029-000095-g50-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000001-000029-000095-g50-06-T.pkl
sleep 600