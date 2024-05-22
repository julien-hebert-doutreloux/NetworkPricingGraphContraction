#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=33:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000002-000002-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000002-000002-g50-05-R.json 200 ./data/generated/problems/paper/g50-05/g50-05.json ./data/generated/problems/paper/g50-05/000001-000002-000002-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000013-000073-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000013-000073-g50-05-R.json 200 ./data/generated/problems/paper/g50-05/g50-05.json ./data/generated/problems/paper/g50-05/000001-000013-000073-g50-05-T.pkl
sleep 601