#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000009-000097-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000009-000097-g35-02-R.json 122
sleep 600