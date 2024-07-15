#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=44:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000002-000021-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000002-000021-g50-02-R.json 200 4 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000002-000021-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000029-000002-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000029-000002-g50-02-R.json 200 4 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000029-000002-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000000-000028-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000000-000028-g50-02-R.json 200 4 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000000-000028-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000028-000002-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000028-000002-g50-02-R.json 200 4 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000028-000002-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000021-000001-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000021-000001-g50-02-R.json 200 4 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000021-000001-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000006-000067-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000006-000067-g50-02-R.json 200 4 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000006-000067-g50-02-T.pkl
sleep 600