#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:11:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000002-000106-000016-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000002-000106-000016-g50-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000002-000106-000016-g50-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000003-000067-000021-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000003-000067-000021-g50-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000003-000067-000021-g50-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000002-000061-000051-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000002-000061-000051-g50-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000002-000061-000051-g50-06-T.pkl
sleep 600