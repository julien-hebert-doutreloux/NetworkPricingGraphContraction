#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000002-000015-000007-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000002-000015-000007-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000002-000015-000007-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000002-000019-000051-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000002-000019-000051-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000002-000019-000051-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000068-000020-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000068-000020-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000068-000020-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000008-000028-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000008-000028-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000008-000028-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000103-000003-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000103-000003-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000103-000003-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000069-000005-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000069-000005-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000069-000005-g50-04-T.pkl
sleep 600