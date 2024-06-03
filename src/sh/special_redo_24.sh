#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=05:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000036-000021-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000036-000021-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000036-000021-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000003-000053-000021-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000003-000053-000021-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000003-000053-000021-g40-06-T.pkl
sleep 600