#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=80:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000019-000076-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000019-000076-g50-07-R.json 154 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000019-000076-g50-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-07/000001-000020-000099-g50-07-P.pkl ./data/generated/problems/paper/g50-07/000001-000020-000099-g50-07-R.json 154 ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/g50-07/000001-000020-000099-g50-07-T.pkl
sleep 600