#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=22:29:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000008-000021-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000008-000021-g50-04-R.json 88.206764742 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000008-000021-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000017-000092-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000017-000092-g50-04-R.json 88.206764742 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000017-000092-g50-04-T.pkl
sleep 601