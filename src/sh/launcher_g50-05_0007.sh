#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=45:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000010-000002-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000010-000002-g50-05-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000010-000002-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000006-000002-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000006-000002-g50-05-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000006-000002-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000003-000001-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000003-000001-g50-05-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000003-000001-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000005-000002-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000005-000002-g50-05-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000005-000002-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000012-000033-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000012-000033-g50-05-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000012-000033-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000011-000002-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000011-000002-g50-05-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000011-000002-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000028-000080-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000028-000080-g50-05-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000028-000080-g50-05-T.pkl
sleep 600