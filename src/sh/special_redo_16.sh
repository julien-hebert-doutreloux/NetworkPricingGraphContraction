#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=11:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-09/000002-000008-000018-g50-09-P.pkl ./data/generated/problems/paper/g50-09/000002-000008-000018-g50-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/g50-09/000002-000008-000018-g50-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000104-000019-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000104-000019-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000104-000019-g30-03-T.pkl
sleep 600