#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000065-000050-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000065-000050-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000065-000050-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000066-000051-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000066-000051-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000066-000051-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000080-000001-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000080-000001-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000080-000001-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000003-000046-000004-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000003-000046-000004-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000003-000046-000004-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000020-000002-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000020-000002-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000020-000002-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000068-000050-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000068-000050-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000068-000050-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000059-000050-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000059-000050-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000059-000050-g50-02-T.pkl
sleep 600