#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000002-000027-000051-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000002-000027-000051-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000002-000027-000051-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000002-000030-000051-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000002-000030-000051-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000002-000030-000051-g50-10-T.pkl
sleep 600