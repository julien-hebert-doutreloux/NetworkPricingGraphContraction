#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=07:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000102-000047-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000102-000047-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000102-000047-g50-04-T.pkl
sleep 600