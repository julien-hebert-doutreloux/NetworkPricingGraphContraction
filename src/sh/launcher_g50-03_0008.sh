#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=31:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000001-000002-000032-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000001-000002-000032-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000001-000002-000032-g50-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-03/000001-000008-000097-g50-03-P.pkl ./data/generated/problems/paper/g50-03/000001-000008-000097-g50-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/g50-03/000001-000008-000097-g50-03-T.pkl
sleep 600