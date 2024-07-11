#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=51:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000018-000073-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000018-000073-g50-05-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000018-000073-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000021-000098-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000021-000098-g50-05-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000021-000098-g50-05-T.pkl
sleep 600