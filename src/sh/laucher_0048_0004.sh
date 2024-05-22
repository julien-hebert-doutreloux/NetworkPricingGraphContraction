#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=07:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000008-000097-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000008-000097-g40-04-R.json 35.737956491 ./data/generated/problems/paper/g40-04/g40-04.json ./data/generated/problems/paper/g40-04/000001-000008-000097-g40-04-T.pkl
sleep 601