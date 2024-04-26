#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000014-000082-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000014-000082-g40-04-R.json 139
sleep 600