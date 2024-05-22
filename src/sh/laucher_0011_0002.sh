#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=24:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000004-000085-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000004-000085-g40-10-R.json 127.82496234 ./data/generated/problems/paper/g40-10/g40-10.json ./data/generated/problems/paper/g40-10/000001-000004-000085-g40-10-T.pkl
sleep 601