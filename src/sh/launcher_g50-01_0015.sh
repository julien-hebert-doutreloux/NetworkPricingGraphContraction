#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000004-000005-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000004-000005-g50-01-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000004-000005-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000025-000086-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000025-000086-g50-01-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000025-000086-g50-01-T.pkl
sleep 600