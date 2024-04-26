#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=20:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000016-000079-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000016-000079-g50-02-R.json 928
sleep 600