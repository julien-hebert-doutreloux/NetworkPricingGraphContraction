#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=01:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000099-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000099-000014-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000099-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000090-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000090-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000090-000014-g40-05-T.pkl
sleep 600