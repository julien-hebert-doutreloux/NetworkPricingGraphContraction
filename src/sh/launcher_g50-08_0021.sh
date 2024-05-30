#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=19:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000073-000050-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000073-000050-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000073-000050-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000075-000008-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000075-000008-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000075-000008-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000064-000051-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000064-000051-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000064-000051-g50-08-T.pkl
sleep 600