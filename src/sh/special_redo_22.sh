#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=09:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000086-000020-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000086-000020-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000086-000020-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000003-000050-000020-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000003-000050-000020-g50-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000003-000050-000020-g50-06-T.pkl
sleep 600