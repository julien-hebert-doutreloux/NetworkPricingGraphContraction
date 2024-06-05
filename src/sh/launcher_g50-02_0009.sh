#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000026-000002-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000026-000002-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000026-000002-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000038-000050-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000038-000050-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000038-000050-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000019-000029-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000019-000029-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000019-000029-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000063-000051-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000063-000051-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000063-000051-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000089-000051-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000089-000051-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000089-000051-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000015-000023-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000015-000023-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000015-000023-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000075-000001-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000075-000001-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000075-000001-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000054-000051-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000054-000051-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000054-000051-g50-02-T.pkl
sleep 600