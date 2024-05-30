#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000002-000041-000039-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000002-000041-000039-g50-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000002-000041-000039-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000002-000052-000051-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000002-000052-000051-g50-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000002-000052-000051-g50-09-T.pkl
sleep 600