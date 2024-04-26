#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=25:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000010-000098-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000010-000098-g50-02-R.json 928
sleep 600