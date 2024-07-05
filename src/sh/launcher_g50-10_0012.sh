#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=45:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000019-000078-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000019-000078-g50-10-R.json 162 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000019-000078-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000016-000079-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000016-000079-g50-10-R.json 162 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000016-000079-g50-10-T.pkl
sleep 600