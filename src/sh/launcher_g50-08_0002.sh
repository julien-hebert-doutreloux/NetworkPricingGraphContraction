#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=66:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000002-000001-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000002-000001-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000002-000001-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000007-000002-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000007-000002-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000007-000002-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000016-000094-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000016-000094-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000016-000094-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000030-000083-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000030-000083-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000030-000083-g50-08-T.pkl
sleep 600