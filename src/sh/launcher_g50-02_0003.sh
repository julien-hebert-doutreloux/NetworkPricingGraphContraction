#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=51:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000014-000066-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000014-000066-g50-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000014-000066-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000018-000077-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000018-000077-g50-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000018-000077-g50-02-T.pkl
sleep 600