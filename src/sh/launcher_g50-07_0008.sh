#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=44:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000029-000076-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000029-000076-g50-07-R.json 154 5 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000029-000076-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000031-000079-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000031-000079-g50-07-R.json 154 5 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000031-000079-g50-07-T.pkl
sleep 600