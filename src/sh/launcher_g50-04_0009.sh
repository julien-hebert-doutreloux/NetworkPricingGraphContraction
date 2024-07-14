#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000027-000069-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000027-000069-g50-04-R.json 74 2 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000027-000069-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000039-000079-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000039-000079-g50-04-R.json 74 2 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000039-000079-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000038-000075-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000038-000075-g50-04-R.json 74 2 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000038-000075-g50-04-T.pkl
sleep 600