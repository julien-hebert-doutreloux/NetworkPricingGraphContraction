#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=33:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000004-000086-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000004-000086-g50-10-R.json 172.092036274 ./data/generated/problems/paper/g50-10/g50-10.json ./data/generated/problems/paper/g50-10/000001-000004-000086-g50-10-T.pkl
sleep 601